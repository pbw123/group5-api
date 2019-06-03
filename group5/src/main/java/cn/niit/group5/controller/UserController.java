package cn.niit.group5.controller;

import cn.niit.group5.entity.*;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.*;
import cn.niit.group5.serviceImp.UserServiceImp;
import cn.niit.group5.util.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

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
    public ResponseResult signUp(@RequestParam(required = true) String phoneNumber,
                                 @RequestParam(required = true) String password,
                                 @RequestParam(required = true) String userName,
                                 String identity, String userAddress,MultipartFile file) {

        User user = userMapper.getUserByPhoneNumber(phoneNumber);
        if (user != null) {
            return ResponseResult.error(StatusConst.MOBILE_EXIST, MsgConst.MOBILE_EXIST);
        } else if (!RegexUtil.passRegex(password)) {
            return new ResponseResult(StatusConst.PASSWORD_VALIDATOR,
                    MsgConst.PASSWORD_VALIDATOR);
        } else {
            User user2 = new User();
            user2.setPhoneNumber(phoneNumber);
            user2.setPassword(password);
            user2.setUserName(userName);
            user2.setIdentity(identity);
            user2.setUnitAddress(userAddress);
            user2.setRegitsterTime(new Timestamp(System.currentTimeMillis()));
            if (file!=null)
            {
                String head = UploadImg.ossUpload(file);
                user2.setHeadUrl(head);
                System.out.println(head+"====================");
            }
            System.out.println(user2.toString());
            int index = userMapper.signUp(user2);
//            Integer index=1;
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

    @ApiOperation(value = "更新我的资料", notes = "修改我的资料并保存")
    @PostMapping(value = "updateMyMsg")
    public ResponseResult updateMyMsg(@RequestParam(required = true) Integer id, String vocation,
                                      String headUrl, String userName, String unitName,
                                      String identity, String educational, String email,
                                      String sex, MultipartFile file) {
        User user = new User();
        user.setId(id);
        user.setVocation(vocation);
        user.setUserName(userName);
        user.setIdentity(identity);
        user.setUnitName(unitName);
        user.setSex(sex);
        user.setEmail(email);
        user.setEducational(educational);
        if (file!=null)
        {
            String f = UploadImg.ossUpload(file);
            user.setHeadUrl(f);
        }
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

    @Autowired
    private ImgMapper imgMapper;

    //我的提问列表
    @ApiOperation(value = "我的提问列表", notes = "根据我的用户id我提出过的所有问题")
    @GetMapping(value = "getQuestionList")
    public ResponseResult getQuestionList(int userId) {
        List<Question> lists = questionMapper.getQuestionListByUserId(userId);
        for (Question question : lists) {
            question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
            String time = StringUtil.getDateString(question.getCreateTime());
            question.setTime(time);
        }
        return ResponseResult.success(lists);
    }

    //    问题详情
    @ApiOperation(value = "问题详情", notes = "关于提问的问题详情,传入该问题的id")
    @GetMapping(value = "getQuestionDetailById")
    public ResponseResult getQuestionDetailById(Integer id) {
        Question question=questionMapper.getQuestionDetail(id);
        question.setTime(StringUtil.getDateString(question.getCreateTime()));
        question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
        List<Reply> replies = question.getReplies();
        for (Reply reply:replies)
        {
            reply.setTime(StringUtil.getDateString(reply.getReplyTime()));
        }
        return ResponseResult.success(question);
    }

    //    根据id查询要添加的用户信息
    @ApiOperation(value = "我的详细资料/其他用户的资料", notes = "传入用户id查看用户详细资料")
    @GetMapping(value = "getUserMsgById")
    public ResponseResult getUserMsgById(Integer userId) {
        User user = questionMapper.getUserById(userId);
        if (user != null) {
            Timestamp regitsterTime = user.getRegitsterTime();
            String time= StringUtil.getDateString(regitsterTime);
           user.setTime(time);
            return ResponseResult.success(user);
        }
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    @Autowired
    private ReplyMapper replyMapper;

    //    我的回答列表
    @ApiOperation(value = "我的回答", notes = "我的所有回复列表")
    @GetMapping(value = "getMyReplyById")
    public ResponseResult getMyReplyById(int userId) {
        List<Reply> replies = replyMapper.getMyReplyById(userId);
        return ResponseResult.success(replies);
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

    @Autowired
    private AttentionMapper attentionMapper;

    //我的关注列表
    @ApiOperation(value = "我的关注列表", notes = "根据我的用户id显示出我关注的问题")
    @GetMapping(value = "/getAttentionByUserId")
    public ResponseResult getAttentionList(int userId) {
        List<Attention> lists = attentionMapper.getAttentionByUserId(userId);
        return ResponseResult.success(lists);
    }

    @Autowired
    private CollectionMapper collectionMapper;

    //我的收藏-问答
    @ApiOperation(value = "我的收藏-问答", notes = "根据我的用户id显示出我收藏的问答")
    @GetMapping(value = "/getCollectQuestionById")
    public ResponseResult getCollectQuestion(int userId) {
        List<Collection> collectionList = collectionMapper.getCollectQuestionById(userId);
        return ResponseResult.success(collectionList);
    }

    //我的收藏-交流
    @ApiOperation(value = "我的收藏-交流", notes = "根据我的用户id显示出我收藏的交流")
    @GetMapping(value = "/getCollectExchangeById")
    public ResponseResult getCollectExchange(int userId) {
        List<Collection> collectionList = collectionMapper.getCollectExchangeById(userId);
        return ResponseResult.success(collectionList);
    }

    //我的收藏-资讯
    @ApiOperation(value = "我的收藏-资讯", notes = "根据我的用户id显示出我收藏的资讯")
    @GetMapping(value = "/getCollectNewsById")
    public ResponseResult getCollectNews(int userId) {
        List<Collection> collectionList = collectionMapper.getCollectNewsById(userId);
        return ResponseResult.success(collectionList);
    }

    //我的收藏-视频
    @ApiOperation(value = "我的收藏-视频", notes = "根据我的用户id显示出我收藏的视频")
    @GetMapping(value = "/getCollectVideoById")
    public ResponseResult getCollectVideo(int userId) {
        List<Collection> collectionList = collectionMapper.getCollectVideoById(userId);
        return ResponseResult.success(collectionList);
    }

    @Autowired
    private SupplyBuyMapper supplyBuyMapper;

    //我的供应
    @ApiOperation(value = "我的供应", notes = "根据我的用户id显示出我的供应列表")
    @GetMapping(value = "/getSupplyById")
    public ResponseResult getSupply(int userId) {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.getSupplyById(userId);
        return ResponseResult.success(supplyBuyList);
    }

    //我的求购
    @ApiOperation(value = "我的求购", notes = "根据我的用户id显示出我的求购列表")
    @GetMapping(value = "/getSeekById")
    public ResponseResult getSeek(int userId) {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.getSeekById(userId);
        return ResponseResult.success(supplyBuyList);
    }

   @Autowired
   private ExpertQuestionMapper expertQuestionMapper;
   @ApiOperation(value = "‘我的提问’中的‘专家提问’",notes = "传入我的用户id")
    @GetMapping(value = "getMyExpertQuestionList")
    public ResponseResult getMyExpertQuestionList(Integer id){
        List<ExpertQuestion> experts=expertQuestionMapper.getMyExpertQuestionList(id);
        return ResponseResult.success(experts);
    }

    @ApiOperation(value = "添加积分",notes = "传入用户的id和添加的积分数")
    @PostMapping(value = "addScore")
    public ResponseResult addMySocre(@RequestParam(required = true) Integer id,
                                     @RequestParam(required = true) Integer number)
    {

        if (id==null||number==null)
        {
            return ResponseResult.error(StatusConst.ERROR,MsgConst.Param_NULL);
        }
        int index = userMapper.addScore(id, number);
        System.out.println(index);
        if (index==1)
            return  ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR,MsgConst.FAIL);
    }

}


