package cn.niit.group5.controller;

import cn.niit.group5.entity.User;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.UserMapper;
import cn.niit.group5.serviceImp.UserServiceImp;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.RegexUtil;
import cn.niit.group5.util.ResponseResult;
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

    /**
     * 登录
     */
    @ApiOperation(value = "登录",notes = "输入手机号和密码进行登录")
    @PostMapping(value = "/signIn")
    public ResponseResult signIn(@RequestBody UserDTO userDTO) {
        return userServiceImp.userSignIn(userDTO);
    }

    /**
     * 检测短信验证码是否相同
     */
    @ApiOperation(value = "验证验证码",notes = "将手机号和验证码进行匹配")
    @PostMapping(value = "/matchVerify")
    public ResponseResult matchVerify(@RequestBody UserCode userCode) throws Exception {
        return userServiceImp.matchVerifySignUp(userCode);
    }

    /**
     *发送验证码
     */
    @ApiOperation(value = "发送验证码",notes = "通过手机号获取验证码")
    @PostMapping(value = "/sendCode")
    public ResponseResult sendCode(@RequestBody  UserCode userCode){
          return userServiceImp.sendVerify(userCode);
        }

    /**
     * 注册
     */
        @ApiOperation(value = "注册",notes = "填写注册信息")
        @PostMapping(value = "signUp")
    public ResponseResult signUp(@RequestParam(required = true) String phoneNumber,
                                 @RequestParam(required = true) String password,
                @RequestParam(required = true) String userName,Integer identity,String userAddress)
        {
           if (!RegexUtil.passRegex(password))
            {
                return new ResponseResult(StatusConst.PASSWORD_VALIDATOR,
                        MsgConst.PASSWORD_VALIDATOR);
            }else {
                User user =new User();
                user.setPhoneNumber(phoneNumber);
                user.setPassword(password);
                user.setUserName(userName);
                user.setUserAddress(userAddress);
                user.setIdentity(identity);
                int index = userMapper.signUp(user);
                if (index==1)
                {
                    return new ResponseResult(StatusConst.SUCCESS, MsgConst.SUCCESS);
                }else {
                    return new ResponseResult(StatusConst.ERROR,MsgConst.FAIL);
                }
            }
        }
    }


