package cn.niit.group5.controller;

import cn.niit.group5.entity.Feedback;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.AttentionMapper;
import cn.niit.group5.mapper.ExpertQuestionMapper;
import cn.niit.group5.mapper.FeedbackMapper;
import cn.niit.group5.mapper.UserMapper;
import cn.niit.group5.serviceImp.QuestionServiceImp;
import cn.niit.group5.serviceImp.UserServiceImp;
import cn.niit.group5.util.Client;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@RestController
@Api(tags = "1.用户模块")
@RequestMapping(value = "/api/user")
@Client
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
    public ResponseResult signUp(String phoneNumber, String password, String userName,
                                 String identity, String userAddress, String icon) {
        return userServiceImp.addUser(phoneNumber, password, userName, identity, userAddress, icon);
    }

    /**
     * 注销用户
     */
    @ApiOperation(value = "注销账号")
    @GetMapping(value = "destroyUser")
    public ResponseResult destroyUser(Integer id) {
        return userServiceImp.removeUser(id);
    }

    /**
     * 我的资料，一个查询接口(登录或注册成功时已经返回数据了，不再写)
     * 一个更新接口
     */

    @ApiOperation(value = "更新我的资料", notes = "修改我的资料并保存")
    @PostMapping(value = "updateMyMsg")
    public ResponseResult updateMyMsg(Integer id, String vocation,
                                      String userName, String unitName,
                                      String identity, String educational, String email,
                                      String sex, String userAddress, String icon) {
        return userServiceImp.changeMsg(id, vocation, userName, unitName, identity, educational,
                email, sex, userAddress, icon);
    }

    //我的提问列表
    @ApiOperation(value = "我的提问列表", notes = "根据我的用户id我提出过的所有问题")
    @GetMapping(value = "getQuestionList")
    public ResponseResult getQuestionList(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.getMyQuestionList(userId, currPage, pageSize);
    }

    //    问题详情
    @Autowired
    private AttentionMapper attentionMapper;
    @Autowired
    private QuestionServiceImp questionServiceImp;

    @ApiOperation(value = "问题详情", notes = "关于提问的问题详情,传入该问题的id及用户的id,用来判断该用户是否关注了该问题")
    @GetMapping(value = "getQuestionDetailById")
    public ResponseResult getQuestionDetailById(Integer id, Integer userId) {
        return questionServiceImp.questionDetail(id, userId);
    }

    //    根据id查询要添加的用户信息
    @ApiOperation(value = "我的详细资料/其他用户的资料", notes = "传入用户id查看用户详细资料")
    @GetMapping(value = "getUserMsgById")
    public ResponseResult getUserMsgById(Integer userId) {
        return userServiceImp.getUserMsg(userId);
    }

    //    我的回答列表
    @ApiOperation(value = "我的回答", notes = "我的所有回复列表")
    @GetMapping(value = "getMyReplyById")
    public ResponseResult getMyReplyById(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.myReplies(userId, currPage, pageSize);
    }

    @Autowired
    private FeedbackMapper feedbackMapper;

    //    意见反馈
    @ApiOperation(value = "意见反馈", notes = "传入我的用户id和意见内容")
    @PostMapping(value = "addFeedback")
    public ResponseResult addFeedback(@RequestParam(required = true) int myUserId,
                                      @RequestParam(required = true) String content) {
        Feedback feedback = new Feedback();
        feedback.setContent(content);
        feedback.setFeedbackTime(new Date());
        feedback.setUserId(myUserId);
        int index = feedbackMapper.insert(feedback);
        if (index == 1) {
            return new ResponseResult().success();
        }
        return new ResponseResult(StatusConst.ERROR, MsgConst.FAIL);
    }

    //我的关注列表
    @ApiOperation(value = "我的关注列表", notes = "根据我的用户id显示出我关注的问题")
    @GetMapping(value = "/getAttentionByUserId")
    public ResponseResult getAttentionList(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.myAttenList(userId, currPage, pageSize);
    }

    //我的收藏-问答
    @ApiOperation(value = "我的收藏-问答", notes = "根据我的用户id显示出我收藏的问答")
    @GetMapping(value = "/getCollectQuestionById")
    public ResponseResult getCollectQuestion(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.getCollectQuestion(userId, currPage, pageSize);
    }

    //我的收藏-交流
    @ApiOperation(value = "我的收藏-交流", notes = "根据我的用户id显示出我收藏的交流")
    @GetMapping(value = "/getCollectExchangeById")
    public ResponseResult getCollectExchange(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.getCollectExchange(userId, currPage, pageSize);
    }

    //我的收藏-资讯
    @ApiOperation(value = "我的收藏-资讯", notes = "根据我的用户id显示出我收藏的资讯")
    @GetMapping(value = "/getCollectNewsById")
    public ResponseResult getCollectNews(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.myCollectNews(userId, currPage, pageSize);
    }

    //我的收藏-视频
    @ApiOperation(value = "我的收藏-视频", notes = "根据我的用户id显示出我收藏的视频")
    @GetMapping(value = "/getCollectVideoById")
    public ResponseResult getCollectVideo(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.myCollectVedio(userId, currPage, pageSize);
    }

    //我的供应
    @ApiOperation(value = "我的供应", notes = "根据我的用户id显示出我的供应列表")
    @GetMapping(value = "/getSupplyById")
    public ResponseResult getSupply(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.mySupply(userId, currPage, pageSize);
    }

    //我的求购
    @ApiOperation(value = "我的求购", notes = "根据我的用户id显示出我的求购列表")
    @GetMapping(value = "/getSeekById")
    public ResponseResult getSeek(Integer userId, Integer currPage, Integer pageSize) {
        return userServiceImp.myBuy(userId, currPage, pageSize);
    }

    @ApiOperation(value = "‘我的提问’中的‘专家提问’", notes = "传入我的用户id")
    @GetMapping(value = "getMyExpertQuestionList")
    public ResponseResult getMyExpertQuestionList(Integer id, Integer currPage, Integer pageSize) {
        return userServiceImp.myExpertQuestion(id, currPage, pageSize);
    }

    @Autowired
    private ExpertQuestionMapper expertQuestionMapper;

    @ApiOperation(value = "删除专家提问")
    @GetMapping(value = "delExpertQuestion")
    public ResponseResult delExpertQuestion(Integer id) {
        if (id == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        } else {
            int i = expertQuestionMapper.delExpertQuestion(id);
            System.out.println(i);
            return ResponseResult.success();
        }
    }

    @ApiOperation(value = "添加积分", notes = "传入用户的id和添加的积分数")
    @PostMapping(value = "addScore")
    public ResponseResult addMyScore(@RequestParam(required = true) Integer id,
                                     @RequestParam(required = true) Integer number) {

        if (id == null || number == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.Param_NULL);
        }
        int index = userMapper.addScore(id, number);
        System.out.println(index);
        if (index == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    @ApiOperation(value = "后台-查询所有用户")
    @GetMapping(value = "getAllUser")
    public ResponseResult getAllUser(@RequestParam(defaultValue = "1") Integer currPage,
                                     @RequestParam(defaultValue = "10") Integer pageSize) {
        return userServiceImp.getAllUser(currPage, pageSize);
    }

}


