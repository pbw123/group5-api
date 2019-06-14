package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.*;
import cn.niit.group5.entity.dto.CollectDTO;
import cn.niit.group5.entity.dto.PageDTO;
import cn.niit.group5.entity.dto.UserCode;
import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.*;
import cn.niit.group5.service.UserService;
import cn.niit.group5.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
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
        User user = userMapper.getUserByPhoneNumber(userDTO.getPhoneNumber());
        if (user != null&&user.getIsDelete()==0) {
            if (user.getStatus() == 0) {
                if (user.getPassword().equals(userDTO.getPassword())) {
//                 登录成功
//                 userMapper.addScore(user.getId(),10);
                    return StatusConst.SUCCESS;
                } else {
//                 密码不正确
                    return StatusConst.PASSWORD_ERROR;
                }
            } else {
//                 账号状态异常
                return StatusConst.USER_STATUS_ERROR;
            }
        } else {
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
        String code = (String) rts.opsForValue().get(phoneNumber);
        System.out.println(code + "----+++++++++++++++++");
        if (code == null) {
            return StatusConst.VERIFYCODE_ERROR;

        } else {
            if (code.equals(pcode)) {
//                验证码正确
                return StatusConst.SUCCESS;
            } else {
//                验证码错误
                System.out.println("验证码错误");
                return StatusConst.VERIFYCODE_ERROR;
            }
        }
    }

    //    验证码验证
    public ResponseResult matchVerifySignUp(UserCode userCode) throws Exception {
        if (userCode.getPhoneNumber() == null) {
            return new ResponseResult(StatusConst.PHONE_NULL_ERROR, MsgConst.PHONE_NUMBER_NULL);

        } else if (!RegexUtil.phoneNumberRegex(userCode.getPhoneNumber())) {
            return new ResponseResult(StatusConst.PHONE_VALIDATOR_ERROR_,
                    MsgConst.PHONE_NUMBER_VALIDATOR);
        } else if (userCode.getCode() == null) {

            return new ResponseResult(StatusConst.VERIFYCODE_NUll, MsgConst.VERIFYCODE_NULL_ERROR);
        } else {
            User users = userMapper.getUserByPhoneNumber(userCode.getPhoneNumber());
            if (users == null||users.getIsDelete()==1) {
                int status = plogin(userCode.getPhoneNumber(), userCode.getCode());
                if (status == StatusConst.SUCCESS) {
//            验证码和手机号匹配得上,返回手机号和验证码
                    return ResponseResult.success(userCode);
                } else {
//         验证码错误或失效
                    return ResponseResult.error(StatusConst.VERIFYCODE_ERROR,
                            MsgConst.VERIFYCODE_ERROR);
                }
            } else {
//               手机号码已经被注册
                return ResponseResult.error(StatusConst.MOBILE_EXIST, MsgConst.MOBILE_EXIST);
            }
        }
    }

    //发送并保存验证码
    public int saveCode(String phoneNumber) {

        String newCode = NewCodeUtil.getNewCode();
//            发送
        int send = SMSUtil.send(phoneNumber, newCode);
        if (send == StatusConst.SUCCESS) {
//            保存
            rts.opsForValue().set(phoneNumber, newCode, 15, TimeUnit.DAYS);
            System.out.println(newCode + "+++++++++++++");
            return StatusConst.SUCCESS;
        }
        return StatusConst.VERIFYCODE_ERROR;
    }

    public ResponseResult sendVerify(UserCode userCode) {
        //        发送验证码并保存到redis
        System.out.println(userCode.getPhoneNumber() + "===================");
        if (userCode.getPhoneNumber() == null) {
            return new ResponseResult(StatusConst.PHONE_NULL_ERROR, MsgConst.PHONE_NUMBER_NULL);
        } else if (!RegexUtil.phoneNumberRegex(userCode.getPhoneNumber())) {
            return new ResponseResult(StatusConst.PHONE_VALIDATOR_ERROR_,
                    MsgConst.PHONE_NUMBER_VALIDATOR);
        } else {
            User user = userMapper.getUserByPhoneNumber(userCode.getPhoneNumber());
            if (user != null&&user.getIsDelete()==0) {
                return ResponseResult.error(StatusConst.MOBILE_EXIST, MsgConst.MOBILE_EXIST);
            } else {
                int status = saveCode(userCode.getPhoneNumber());
                if (status == StatusConst.SUCCESS)
                    return ResponseResult.success();//            验证码发送成功
                else
                    return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
            }
        }
    }

    //登录
    public ResponseResult userSignIn(UserDTO userDTO) {
        if (userDTO.getPhoneNumber() == null) {
            return new ResponseResult(StatusConst.PHONE_NULL_ERROR, MsgConst.PHONE_NUMBER_NULL);
        } else if (!RegexUtil.phoneNumberRegex(userDTO.getPhoneNumber())) {
            return new ResponseResult(StatusConst.PHONE_VALIDATOR_ERROR_,
                    MsgConst.PHONE_NUMBER_VALIDATOR);
        } else if (userDTO.getPassword() == null) {
            return new ResponseResult(StatusConst.PASSWORD_NULL,
                    MsgConst.PASSWORD_NULL_);
        } else if (!RegexUtil.passRegex(userDTO.getPassword())) {
            return new ResponseResult(StatusConst.PASSWORD_VALIDATOR, MsgConst.PASSWORD_VALIDATOR);
        } else {
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
    public int updateMyDocument(User user) {
        int index = userMapper.updateMyMsg(user);
        System.out.println(index + "=============");
        if (index == 1) {
            return StatusConst.SUCCESS;
        }
        System.out.println("业务层操作失败");
        return StatusConst.ERROR;
    }

    @Autowired
    QuestionMapper questionMapper;

    //        启用/禁用用户
    public ResponseResult setUserStatus(Integer userId) {
        Integer status;
        User user = questionMapper.getUserById(userId);
        status = user.getStatus();
        CollectDTO collectDTO = new CollectDTO();
        if (status == 0) {
            int index = userMapper.setStatus(userId, status);
            if (index == 1) {
                collectDTO.setStatus(questionMapper.getUserById(userId).getStatus());
                collectDTO.setMsg("已禁用");
                return ResponseResult.success(collectDTO);
            }
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
        } else {
            int index = userMapper.setStatus(userId, status);
            if (index == 1) {
                status = questionMapper.getUserById(userId).getStatus();
                System.out.println(status);
                collectDTO.setStatus(status);
                collectDTO.setMsg("已启用");
                return ResponseResult.success(collectDTO);
            }
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
        }
    }

    public ResponseResult addUserRear(String userName, String sex, String phoneNumber,
                                      String email, String identity, String userAddress,
                                      String icon) {
        User user = new User();
        user.setRegitsterTime(new Timestamp(System.currentTimeMillis()));
        user.setUserName(userName);
        user.setPhoneNumber(phoneNumber);
        user.setHeadUrl(icon);
        user.setSex(sex);
        user.setIdentity(identity);
        user.setUserAddress(userAddress);
        user.setEmail(email);
        user.setRegitsterTime(new Timestamp(System.currentTimeMillis()));
        int index = userMapper.addUser(user);
        if (index == 1) {
            System.out.println(user.toString());
            return ResponseResult.success();
        } else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult getAllUser(Integer currPage, Integer pageSize) {
//        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        List<User> users = userMapper.getUserList();

//        int total=(int)Math.ceil(size/pageSize);
//        int total=size%pageSize==0?size/pageSize:size/pageSize+1;
//        System.out.println("总记录数："+size+"+++++总页数"+total);

        PageDTO page = PageUtil.page(currPage, pageSize, users);
        List<User> userList = page.getList();
        for (User user : userList) {
            Timestamp regitsterTime = user.getRegitsterTime();
            if (regitsterTime != null) {
                user.setTime(StringUtil.getDateString(regitsterTime));
            }
        }
        return ResponseResult.succ(userList, page.getSize());
    }

    public ResponseResult search(Integer currPage, Integer pageSize, String keyword) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        map.put("keyword", keyword);
        List<User> users = userMapper.searchUser(map);
        return ResponseResult.success(users);
    }

    @Autowired
    private CollectionMapper collectionMapper;
    @Autowired
    private ExchangeMapper exchangeMapper;

    public ResponseResult getCollectExchange(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, "id不能为空");
        }
        List<Collection> collections = collectionMapper.getCollectExchangeById(userId);

        PageDTO page = PageUtil.pageListDemo(currPage, pageSize, collections);
        List<Collection> pageList = page.getList();
        for (Collection collection : pageList) {
            Exchange exchange = collection.getExchange();
            Timestamp createTime = exchange.getCreateTime();
            if (createTime != null)
                exchange.setTime(StringUtil.getDateString(createTime));
//            List list = new ArrayList<>();
//            list.add(exchange.getImg());
//            exchange.setImgs(list);
            exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
            Like like = exchangeMapper.isLikeOrNo(userId, "exchange_id", exchange.getId());
            if (like != null && like.getStatus() == 0)
                exchange.setIsLike(0);
            else
                exchange.setIsLike(1);

            int number = exchangeMapper.getExchangeLikeNumber("exchange_id", exchange.getId());
            exchange.setLike(number);
        }
        return ResponseResult.succ(collections, page.getSize());
    }

    public ResponseResult getCollectQuestion(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }
        List<Collection> collections = collectionMapper.getCollectQuestionById(userId);
        PageDTO page = PageUtil.pageListDemo(currPage, pageSize, collections);
        List<Collection> pageList = page.getList();
        for (Collection collection : pageList) {
            Question question = collection.getQuestion();
            Timestamp createTime = question.getCreateTime();
            if (createTime != null)
                question.setTime(StringUtil.getDateString(createTime));
//            List list = new ArrayList<>();
//            list.add(question.getImg());
            question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
        }
        return ResponseResult.succ(collections, page.getSize());
    }

    @Autowired
    private ReplyMapper replyMapper;

    public ResponseResult search(String city, String identity, Integer currPage, Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        map.put("userAddress", city);
        map.put("identity", identity);
        List<User> users = userMapper.search(map);
        return ResponseResult.success(users);
    }

    public ResponseResult myReplies(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, "id不能为空");
        }
        List<Reply> replies = replyMapper.getMyReplyById(userId);
        PageDTO page = PageUtil.pageListDemo(currPage, pageSize, replies);
        List<Reply> lists = page.getList();
        for (Reply reply : lists) {
            Timestamp replyTime = reply.getReplyTime();
            if (replyTime != null) {
                reply.setTime(StringUtil.getDateString(replyTime));
            }
        }
        return ResponseResult.succ(lists, page.getSize());
    }

    @Autowired
    private ImgMapper imgMapper;

    public ResponseResult getMyQuestionList(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
        }
        List<Question> lists = questionMapper.getQuestionListByUserId(userId);
        if (lists == null) {
            return ResponseResult.success();
        }
        Integer curr = 1;
        Integer size = 15;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        PageDTO page = PageUtil.page(curr, size, lists);
        List<Question> pageList = page.getList();
        for (Question question : pageList) {
            question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
            Timestamp createTime = question.getCreateTime();
            if (createTime != null)
                question.setTime(StringUtil.getDateString(createTime));
        }
        return ResponseResult.succ(lists, page.getSize());
    }

    public ResponseResult changeMsg(Integer id, String vocation,
                                    String userName, String unitName,
                                    String identity, String educational, String email,
                                    String sex, String userAddress, String icon) {
        if (id == null)
            return ResponseResult.error(StatusConst.ERROR, "id不能为空");
        User user = new User();
        user.setId(id);
        user.setUserAddress(userAddress);
        user.setVocation(vocation);
        user.setUserName(userName);
        user.setIdentity(identity);
        user.setUnitName(unitName);
        user.setSex(sex);
        user.setEmail(email);
        user.setEducational(educational);
        user.setHeadUrl(icon);
        if (updateMyDocument(user) == StatusConst.SUCCESS) {
            System.out.println("控制层操作成功");
            return ResponseResult.success(user);
        } else {
            System.out.println("控制层操作失败");
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
        }
    }

    public ResponseResult addUser(String phoneNumber, String password, String userName,
                                  String identity, String userAddress, String icon) {
        User user;
        System.out.println("测试+++++++++++++++");
        user = userMapper.getUserByPhoneNumber(phoneNumber);
        if (user != null) {
            if (user.getIsDelete() == 0) {
                return ResponseResult.error(StatusConst.MOBILE_EXIST, MsgConst.MOBILE_EXIST);
            }
            if (user.getIsDelete() == 1) {
                user.setPhoneNumber(phoneNumber);
                user.setPassword(password);
                user.setUserName(userName);
                user.setIdentity(identity);
                user.setUserAddress(userAddress);
                user.setHeadUrl(icon);
                user.setIsDelete(0);
                System.out.println(user.toString());
                updateMyDocument(user);
                System.out.println("测试");
                return ResponseResult.success();
            }
        } else if (!RegexUtil.passRegex(password)) {
            return new ResponseResult(StatusConst.PASSWORD_VALIDATOR,
                    MsgConst.PASSWORD_VALIDATOR);
        } else {
            user = new User();
            user.setPhoneNumber(phoneNumber);
            user.setPassword(password);
            user.setUserName(userName);
            user.setIdentity(identity);
            user.setUnitAddress(userAddress);
            user.setRegitsterTime(new Timestamp(System.currentTimeMillis()));
            user.setHeadUrl(icon);
            System.out.println(icon);
            int index = userMapper.signUp(user);
//            Integer index=1;
            System.out.println(index);
            if (index == 1) {
                return new ResponseResult(StatusConst.SUCCESS, MsgConst.SUCCESS);
            }
        }
        return new ResponseResult(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult removeUser(Integer id) {
        if (id == null)
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        userMapper.delUser(id);
        return ResponseResult.success();
    }

    public ResponseResult getUserMsg(Integer userId) {
        User user = questionMapper.getUserById(userId);
        if (user != null) {
            Timestamp regitsterTime = user.getRegitsterTime();
            String time = StringUtil.getDateString(regitsterTime);
            user.setTime(time);
            return ResponseResult.success(user);
        } else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult myCollectNews(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, "id不能为空");
        }
        Integer curr = StatusConst.CURRENTPAGE;
        Integer size = StatusConst.PAGESIZE;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        List<Collection> collectionList = collectionMapper.getCollectNewsById(userId);
        if (collectionList == null) {
            return ResponseResult.success();
        }
        PageDTO page = PageUtil.page(curr, size, collectionList);
        List<Collection> pageList = page.getList();
        for (Collection list : pageList) {
            News news = list.getNews();
            Date createTime = news.getCreateTime();
            if (createTime != null) {
                news.setTime(StringUtil.getDateString(createTime));
            }
            news.setImgs(imgMapper.getNewsImgsList(news.getId()));
        }

        return ResponseResult.succ(pageList, page.getSize());
    }

    @Autowired
    private AttentionMapper attentionMapper;

    public ResponseResult myAttenList(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }

        List<Attention> lists = attentionMapper.getAttentionByUserId(userId);
        if (lists == null) {
            return ResponseResult.success();
        }
        Integer curr = StatusConst.CURRENTPAGE;
        Integer size = StatusConst.PAGESIZE;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        PageDTO page = PageUtil.page(curr, size, lists);
        List<Attention> pageList = page.getList();
        for (Attention attention : pageList) {
            Question question = attention.getQuestion();
            Timestamp createTime = question.getCreateTime();
            if (createTime != null) {
                question.setTime(StringUtil.getDateString(createTime));
            }
            question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
            question.setReplyAmount(questionMapper.getReplyAmount(question.getId()));
        }
        return ResponseResult.succ(pageList, page.getSize());
    }

    public ResponseResult myCollectVedio(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }
        List<Collection> collectionList = collectionMapper.getCollectVideoById(userId);
        if (collectionList == null) {
            return ResponseResult.success();
        }
        Integer curr = StatusConst.CURRENTPAGE;
        Integer size = StatusConst.PAGESIZE;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        PageDTO page = PageUtil.page(curr, size, collectionList);
        List<Collection> pageList = page.getList();
        for (Collection collection : pageList) {
            Video videos = collection.getVideos();
            Timestamp createTime = videos.getCreateTime();
            if (createTime != null) {
                videos.setTime(StringUtil.getDateString(createTime));
            }
        }
        return ResponseResult.succ(pageList, page.getSize());
    }

    @Autowired
    private SupplyBuyMapper supplyBuyMapper;

    public ResponseResult myBuy(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }
        List<SupplyBuy> buyList = supplyBuyMapper.getSeekById(userId);
        if (buyList == null) {
            return ResponseResult.success();
        }
        Integer curr = StatusConst.CURRENTPAGE;
        Integer size = StatusConst.PAGESIZE;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        PageDTO page = PageUtil.page(curr, size, buyList);
        List<SupplyBuy> list = page.getList();
        for (SupplyBuy buy : list) {
            if (buy.getCreateTime() != null) {
                buy.setTime(StringUtil.getDateString(buy.getCreateTime()));
            }
            if (buy.getLimitTime() != null) {
                buy.setEndTime(StringUtil.getDateString(buy.getLimitTime()));
            }
            buy.setImgs(imgMapper.getBuyImgs(buy.getId()));
        }
        return ResponseResult.succ(list, page.getSize());
    }

    public ResponseResult mySupply(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }
        List<SupplyBuy> supplyList = supplyBuyMapper.getSupplyById(userId);
        if (supplyList == null) {
            return ResponseResult.success();
        }
        Integer curr = StatusConst.CURRENTPAGE;
        Integer size = StatusConst.PAGESIZE;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        PageDTO page = PageUtil.page(curr, size, supplyList);
        List<SupplyBuy> pageList = page.getList();
        for (SupplyBuy supply : pageList) {
            if (supply.getCreateTime() != null) {
                supply.setTime(StringUtil.getDateString(supply.getCreateTime()));
            }
            if (supply.getLimitTime() != null) {
                supply.setEndTime(StringUtil.getDateString(supply.getLimitTime()));
            }
            supply.setImgs(imgMapper.getBuyImgs(supply.getId()));
        }

        return ResponseResult.succ(pageList, page.getSize());
    }

    @Autowired
    private ExpertMapper expertMapper;
    @Autowired
    private ExpertQuestionMapper expertQuestionMapper;

    public ResponseResult myExpertQuestion(Integer userId, Integer currPage, Integer pageSize) {
        if (userId == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }
        List<ExpertQuestion> questions = expertQuestionMapper.getMyExpertQuestionList(userId);
        PageDTO page = PageUtil.pageListDemo(currPage, pageSize, questions);
        List<ExpertQuestion> pageList = page.getList();
        for (ExpertQuestion question : pageList) {
            Expert expert = expertMapper.selectById(question.getExpertId());

            question.setSort(expert.getSortName());
            if (question.getCreateTime() != null) {
                question.setTime(StringUtil.getDateString(question.getCreateTime()));
            }
            question.setImgs(imgMapper.getExpertImgs(question.getId()));
        }
        return ResponseResult.succ(pageList, page.getSize());
    }
}
