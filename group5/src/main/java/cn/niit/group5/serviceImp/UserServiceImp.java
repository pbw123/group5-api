package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.User;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.UserMapper;
import cn.niit.group5.service.UserService;
import cn.niit.group5.util.NewCodeUtil;
import cn.niit.group5.util.SmsUtil;
import cn.niit.group5.util.StatusConst;
import com.aliyuncs.exceptions.ClientException;
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


    public int plogin(String phoneNumber, String pcode) throws Exception {
        try{
            Object code=rts.opsForValue().get(phoneNumber);
            if (code.equals(pcode)) {
//                验证码正确
                return  StatusConst.SUCCESS;
            } else {
//                验证码错误
                return StatusConst.VERIFYCODE_ERROR;
            }
        }catch (Exception e){
            e.printStackTrace();
//            验证码失效？
            return StatusConst.VERIFYCODE_ERROR;
        }
    }

    public int saveCode(String phoneNumber)
    {
        User user = userMapper.getUserByPhoneNumber(phoneNumber);
        if (user==null)
        {
            String newcode = String.valueOf(NewCodeUtil.getNewCode());
            try {
               SmsUtil.sendSms(phoneNumber, newcode);
                rts.opsForValue().set(phoneNumber,newcode,5, TimeUnit.MINUTES);
                return StatusConst.SUCCESS;
            } catch (ClientException e) {
                e.printStackTrace();
            }

        }else {
//            手机号已经被注册过
            return StatusConst.MOBILE_EXIST;
        }
//        发送验证码失败
        return StatusConst.VERIFYCODE_ERROR;
    }

}
