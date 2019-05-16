package cn.niit.group5.controller;

import cn.niit.group5.entity.*;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.*;
import cn.niit.group5.serviceImp.UserServiceImp;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.RegexUtil;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

@RestController
@Api(tags = "用户模块")
@RequestMapping(value = "/api/user", produces = APPLICATION_JSON_VALUE)
public class UserController {
    @Autowired
    private UserServiceImp userServiceImp;
    @Autowired
    private UserMapper userMapper;


    /**
     * 登录
     */
    @ApiOperation(value = "登录", notes = "输入手机号和密码进行登录")
    @PostMapping(value = "/signIn")
    public ResponseResult signIn(@RequestBody UserDTO userDTO) {
        return userServiceImp.userSignIn(userDTO);
    }

    /**
     * 检测短信验证码是否相同
     */
    @ApiOperation(value = "验证验证码", notes = "将手机号和验证码进行匹配")
    @PostMapping(value = "/matchVerify")
    public ResponseResult matchVerify(@RequestBody UserCode userCode) throws Exception {
        return userServiceImp.matchVerifySignUp(userCode);
    }

    /**
     * 发送验证码
     */
    @ApiOperation(value = "发送验证码", notes = "通过手机号获取验证码")
    @PostMapping(value = "/sendCode")
    public ResponseResult sendCode(@RequestBody UserCode userCode) {
        return userServiceImp.sendVerify(userCode);
    }

    /**
     * 注册
     */
    @ApiOperation(value = "注册", notes = "填写注册信息")
    @PostMapping(value = "signUp")
    public ResponseResult signUp(@RequestParam(required = true) String phoneNumber,
                                 @RequestParam(required = true) String password,
                                 @RequestParam(required = true) String userName,
                                 String identity, String unitAddress) {
        if (!RegexUtil.passRegex(password)) {
            return new ResponseResult(StatusConst.PASSWORD_VALIDATOR,
                    MsgConst.PASSWORD_VALIDATOR);
        } else {
            User user = new User();
            user.setPhoneNumber(phoneNumber);
            user.setPassword(password);
            user.setUserName(userName);
            user.setIdentity(identity);
            user.setUnitAddress(unitAddress);
            user.setRegitsterTime(new Date());
            int index = userMapper.signUp(user);
            if (index == 1) {
                return new ResponseResult(StatusConst.SUCCESS, MsgConst.SUCCESS);
            } else {
                return new ResponseResult(StatusConst.ERROR, MsgConst.FAIL);
            }
        }
    }

    /**
     * 我的资料，一个查询接口(登录或注册成功时已经返回数据了，不再写)
     * 一个更新接口
     */
    @ApiOperation(value = "我的资料", notes = "修改我的资料并保存")
    @PostMapping(value = "updateMyMsg")
    public ResponseResult updateMyMsg(@RequestParam(required = true) String id, String vocation,
                                      String headUrl, String userName, String unitName,
                                      String identity, String educational, String email, String sex) {
        User user = new User();
        user.setId(Integer.valueOf(id));
        user.setVocation(vocation);
        user.setHeadUrl(headUrl);
        user.setUserName(userName);
        user.setIdentity(identity);
        user.setUnitName(unitName);
        user.setSex(sex);
        user.setEmail(email);
        if (userServiceImp.updateMyDocument(user) == StatusConst.SUCCESS) {

            System.out.println("控制层操作成功");
            return ResponseResult.success(user);
        } else {
            System.out.println("控制层操作失败");
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
        }
    }

    @Autowired
    private QuestionMapper questionMapper;
    //    我的提问
//    @ApiOperation(value = "我的提问",notes = "我的提问一个请求三个页面的数据")
//    @GetMapping(value = "getMyQuestion/{id}")
//    public List<Question> getMyQuestion(@PathVariable int id)
//    {
//        return  questionMapper.selectAllByUserId(id);
//    }

    //我的提问列表
    @ApiOperation(value = "我的提问列表",notes = "根据我的用户id我提出过的所有问题")
    @GetMapping(value = "getQuestionList")
    public List<Question>getQuestionList(int userId)
    {
        List<Question> lists = questionMapper.getQuestionListByUserId(userId);
//        for (Question ls:lists)
//        {
//            System.out.println(ls.toString());
//        }
        return  lists;
    }
//    问题详情
    @ApiOperation(value = "问题详情",notes = "关于提问的问题详情")
    @GetMapping(value = "getQuestionDetailById/{question_id}")
    public Question getQuestionDetailById(@PathVariable int question_id)
    {
        return questionMapper.getQuestionDetail(question_id);
    }

//    根据id查询要添加的用户信息
    @ApiOperation(value = "详细资料",notes = "根据id请求可添加好友的详细资料")
    @GetMapping(value = "getAddUserById/{userId}")
    public User getAddUserById(@PathVariable int userId)
    {
        return questionMapper.getUserById(userId);
    }

    @Autowired
    private ReplyMapper replyMapper;
//    我的回答列表
    @ApiOperation(value = "我的回答",notes = "我的所有回复列表")
    @GetMapping(value = "getMyReplyById/{userId}")
    public List<Reply> getMyReplyById(@PathVariable int userId)
    {
        return replyMapper.getMyReplyById(userId);
    }


    @Autowired
    private FeedbackMapper feedbackMapper;
//    意见反馈
    @ApiOperation(value = "意见反馈",notes = "传入我的用户id和意见内容")
    @PostMapping(value = "addFeedback")
    public ResponseResult addFeedback(@RequestParam(required = true) int myUserId,
                           @RequestParam(required = true) String content)
    {
        Feedback feedback=new Feedback();
        feedback.setContent(content);
        feedback.setFeedbackTime(new Date());
        feedback.setUserId(myUserId);
        int index = feedbackMapper.insert(feedback);
        if (index==1)
        {
            return new ResponseResult().success();
        }
        return new ResponseResult(StatusConst.SUCCESS,MsgConst.FAIL);
    }

}


