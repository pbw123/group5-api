package cn.niit.group5.controller;

import cn.niit.group5.entity.User;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.UserMapper;
import cn.niit.group5.serviceImp.UserServiceImp;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    private UserServiceImp userServiceImp;
    @Autowired
    private UserMapper userMapper;


    @PostMapping(value = "sign_in")
    public ResponseResult signIn(@RequestBody UserDTO userDTO)
    {
        int status = userServiceImp.signIn(userDTO);
        System.out.println(userDTO.toString());
        if (status== StatusConst.SUCCESS){
            User user=userMapper.getUserByPhoneNumber(userDTO.getPhoneNumber());
            return ResponseResult.success(user);
        }else {
            if (status==StatusConst.USER_MOBILE_NOT_FOUND)
            {
                //                手机号不存在
                return ResponseResult.error(status, MsgConst.USER_MOBILE_NO_FOUND);
            }else if (status==StatusConst.USER_STATUS_ERROR){
                //                手机号状态异常
                return ResponseResult.error(status,MsgConst.USER_STATUS_ERROR);
            }else
            {
//                密码错误
                return ResponseResult.error(status,MsgConst.PASSWORD_ERROR);
            }
        }
    }

     /**
     * 检测短信验证码是否相同  登陆
     */
@PostMapping(value = "sign_up")
    public ResponseResult signUp(UserCode userCode) throws Exception {
    int status = userServiceImp.plogin(userCode.getPhoneNumber(), userCode.getCode());
    if (status==StatusConst.SUCCESS)
    {
        return ResponseResult.success();
    }else {
            return ResponseResult.error(StatusConst.VERIFYCODE_ERROR,MsgConst.VERIFYCODE_ERROR);
    }
}
@PostMapping(value = "/sendCode")
    public ResponseResult sendCode(String phoneNumber) {
    int status = userServiceImp.saveCode(phoneNumber);
    if (status==StatusConst.SUCCESS)
    {
        return ResponseResult.success();
    }else {
        if (status==StatusConst.MOBILE_EXIST)
        {
            return ResponseResult.error(StatusConst.MOBILE_EXIST,MsgConst.MOBILE_EXIST);
        }else {
            return ResponseResult.error(StatusConst.VERIFYCODE_ERROR,MsgConst.VERIFYCODE_ERROR);
        }
    }


}


}
