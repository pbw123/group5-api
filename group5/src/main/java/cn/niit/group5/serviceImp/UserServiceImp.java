package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.User;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.UserMapper;
import cn.niit.group5.service.UserService;
import cn.niit.group5.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

@Service
public class UserServiceImp implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    @Qualifier("redisTemplate")//实例化
    private RedisTemplate<Object, Object> rts;

    @Override
    public int signIn(UserDTO userDTO) {
         User user=userMapper.getUserByPhoneNumber(userDTO.getPhoneNumber());
         if (user!=null)
         {
             if (user.getIsForbidden()==0)
             {
             if (user.getPassword().equals(userDTO.getPassword()))
             {
//                 登录成功
                 userMapper.updateScore();
                 return StatusConst.SUCCESS;
             }else {
//                 密码不正确
                 return StatusConst.PASSWORD_ERROR;
             }
             }else{
//                 账号状态异常
                 return StatusConst.USER_STATUS_ERROR;
             }
         }else {
//         手机号不存在
             return StatusConst.USER_MOBILE_NOT_FOUND;
         }
    }

    @Override
    public int signUp(UserDTO userDTO) {
        return 0;
    }

//验证验证码
    public int plogin(String phoneNumber, String pcode) throws Exception {
            String code=(String) rts.opsForValue().get(phoneNumber);
            System.out.println(code+"----+++++++++++++++++");
            if (code==null)
            {
                return  StatusConst.VERIFYCODE_ERROR;

            }else {
                if (code.equals(pcode)) {
//                验证码正确
                    return  StatusConst.SUCCESS;
                } else {
//                验证码错误
                    System.out.println("验证码错误");
                    return StatusConst.VERIFYCODE_ERROR;
                }
            }
    }
//    验证码验证
    public ResponseResult matchVerifySignUp(UserCode userCode) throws Exception {
        if (userCode.getPhoneNumber()==null)
        {
            return new ResponseResult(StatusConst.PHONE_NULL_ERROR,MsgConst.PHONE_NUMBER_NULL);

        }else if (!RegexUtil.phoneNumberRegex(userCode.getPhoneNumber()))
        {
            return new ResponseResult(StatusConst.PHONE_VALIDATOR_ERROR_,
                    MsgConst.PHONE_NUMBER_VALIDATOR);
        }else if (userCode.getCode()==null)
        {

            return new ResponseResult(StatusConst.VERIFYCODE_NUll,MsgConst.VERIFYCODE_NULL_ERROR);
        }
        else {
            User users = userMapper.getUserByPhoneNumber(userCode.getPhoneNumber());
            if (users==null)
            {
                int status = plogin(userCode.getPhoneNumber(), userCode.getCode());
                if (status == StatusConst.SUCCESS) {
//            验证码和手机号匹配得上,返回手机号和验证码
                    return ResponseResult.success(userCode);
                } else {
//         验证码错误或失效
                    return ResponseResult.error(StatusConst.VERIFYCODE_ERROR, MsgConst.VERIFYCODE_ERROR);
                }
            }else {
//               手机号码已经被注册
                return ResponseResult.error(StatusConst.MOBILE_EXIST,MsgConst.MOBILE_EXIST);
            }
        }
    }

//发送并保存验证码
    public int saveCode(String phoneNumber)
    {

            String newCode = NewCodeUtil.getNewCode();
//            发送
        int send = SMSUtil.send(phoneNumber, newCode);
        if (send==StatusConst.SUCCESS)
        {
//            保存
            rts.opsForValue().set(phoneNumber,newCode,15, TimeUnit.DAYS);
            System.out.println(newCode+"+++++++++++++");
            return  StatusConst.SUCCESS;
        }
            return StatusConst.VERIFYCODE_ERROR;
    }

    public ResponseResult sendVerify(UserCode userCode)
    {
        //        发送验证码并保存到redis
        System.out.println(userCode.getPhoneNumber()+"===================");
        if (userCode.getPhoneNumber()==null)
        {
            return   new ResponseResult(StatusConst.PHONE_NULL_ERROR, MsgConst.PHONE_NUMBER_NULL);
        }else if (!RegexUtil.phoneNumberRegex(userCode.getPhoneNumber()))
        {
            return     new ResponseResult(StatusConst.PHONE_VALIDATOR_ERROR_,
                    MsgConst.PHONE_NUMBER_VALIDATOR);
        }
        else {
           User user = userMapper.getUserByPhoneNumber(userCode.getPhoneNumber());
            if (user!=null)
            {
                return ResponseResult.error(StatusConst.MOBILE_EXIST,MsgConst.MOBILE_EXIST);
            }else {
                int status = saveCode(userCode.getPhoneNumber());
                if (status == StatusConst.SUCCESS) {
//            验证码发送成功
                    return ResponseResult.success();
                } else {
//                验证码错误
                    return ResponseResult.error(StatusConst.VERIFYCODE_ERROR, MsgConst.SEND_VERIFYCODE_ERROR);
                }
            }
        }
    }
//登录
    public ResponseResult userSignIn(UserDTO userDTO)
    {
        if (userDTO.getPhoneNumber()==null)
        {
            return   new ResponseResult(StatusConst.PHONE_NULL_ERROR, MsgConst.PHONE_NUMBER_NULL);
        }else if (!RegexUtil.phoneNumberRegex(userDTO.getPhoneNumber()))
        {
            return     new ResponseResult(StatusConst.PHONE_VALIDATOR_ERROR_,
                    MsgConst.PHONE_NUMBER_VALIDATOR);
        }else if (userDTO.getPassword()==null)
        {
            return new ResponseResult(StatusConst.PASSWORD_NULL,
                    MsgConst.PASSWORD_NULL_);
        }else if (!RegexUtil.passRegex(userDTO.getPassword()))
        {
            return new ResponseResult(StatusConst.PASSWORD_VALIDATOR,MsgConst.PASSWORD_VALIDATOR);
        }
        else {
            int status = signIn(userDTO);
            if (status == StatusConst.SUCCESS) {
                User user = userMapper.getUserByPhoneNumber(userDTO.getPhoneNumber());
                return ResponseResult.success(user);
            } else {
                if (status == StatusConst.USER_MOBILE_NOT_FOUND) {
                    //                手机号不存在
                    return ResponseResult.error(status, MsgConst.USER_MOBILE_NO_FOUND);
                } else if (status == StatusConst.USER_STATUS_ERROR) {
                    //                手机号状态异常
                    return ResponseResult.error(status, MsgConst.USER_STATUS_ERROR);
                } else {
//                密码错误
                    return ResponseResult.error(status, MsgConst.PASSWORD_ERROR);
                }
            }

        }
    }
//            更新我的资料
    public int updateMyDocument(User user)
    {
        int index = userMapper.updateMyMsg(user);
        System.out.println(index+"=============");
        if (index==1)
        {
            return  StatusConst.SUCCESS;
        }
        System.out.println("业务层操作失败");
        return StatusConst.ERROR;
    }


}
