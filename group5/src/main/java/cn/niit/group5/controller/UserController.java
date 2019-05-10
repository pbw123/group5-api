package cn.niit.group5.controller;

import cn.niit.group5.entity.User;
import cn.niit.group5.entity.dto.PhoneNumberDTO;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.UserMapper;
import cn.niit.group5.serviceImp.UserServiceImp;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.SMSUtil;
import cn.niit.group5.util.StatusConst;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

@RestController
@Api(tags = "用户模块")
@RequestMapping(value = "/api/user",produces = APPLICATION_JSON_VALUE)
public class UserController {
    @Autowired
    private UserServiceImp userServiceImp;
    @Autowired
    private UserMapper userMapper;

    @ApiOperation(value = "登录",notes = "输入手机号和密码进行登录")
    @PostMapping(value = "sign_in")
    public ResponseResult signIn(@RequestBody UserDTO userDTO) {
//        System.out.println(userDTO.toString()+"========我操你==========="+userDTO.getPhoneNumber()+userDTO.getPassword());
        int status = userServiceImp.signIn(userDTO);
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

    /**
     * 检测短信验证码是否相同  注册
     */
    @ApiOperation(value = "注册",notes = "输入手机号和验证码进行注册")
    @PostMapping(value = "sign_up")
    public ResponseResult signUp(@RequestBody UserCode userCode) throws Exception {

        int status = userServiceImp.plogin(userCode.getPhoneNumber(), userCode.getCode());
        if (status == StatusConst.SUCCESS) {
//            验证码和手机号匹配得上,返回手机号和验证码
            return ResponseResult.success(userCode);
        } else {
//         验证码错误或失效
            return ResponseResult.error(StatusConst.VERIFYCODE_ERROR, MsgConst.VERIFYCODE_ERROR);
        }
    }

    /*发送验证码*/
    @ApiOperation(value = "发送验证码",notes = "通过手机号获取验证码")
    @PostMapping(value = "/sendCode")
    public ResponseResult sendCode(@RequestBody PhoneNumberDTO phoneNumberDTO) {
//        发送验证码并保存到redis
        System.out.println(phoneNumberDTO.getPhoneNumber()+"===================");
        int status = userServiceImp.saveCode(phoneNumberDTO.getPhoneNumber());
        if (status == StatusConst.SUCCESS) {
//            验证码发送成功
            return ResponseResult.success();
        } else {
            if (status == StatusConst.MOBILE_EXIST) {
//                手机号已经被注册
                return ResponseResult.error(StatusConst.MOBILE_EXIST, MsgConst.MOBILE_EXIST);
            } else {
//                验证码错误
                return ResponseResult.error(StatusConst.VERIFYCODE_ERROR, MsgConst.VERIFYCODE_ERROR);
            }
        }

    }

   /* @PostMapping(value = "/send")
    public void send(String number)
    {
        SMSUtil.send(number);
    }*/
   @PostMapping(value = "/send")
   public ResponseResult getVerifyCode(@RequestParam("mobile") String mobile) {

           String verifyCode = SMSUtil.send(mobile);
//            String verifyCode = StringUtil.getVerifyCode();
           System.out.println(verifyCode);
           return ResponseResult.success();
   }


}
