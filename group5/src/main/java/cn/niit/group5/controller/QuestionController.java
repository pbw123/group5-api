package cn.niit.group5.controller;

import cn.niit.group5.entity.Attention;
import cn.niit.group5.entity.Collection;
import cn.niit.group5.entity.Question;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.*;
import cn.niit.group5.serviceImp.ExchangeServiceImp;
import cn.niit.group5.util.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;
import java.util.List;

@RestController
@Api(tags = "2.快速提问")
@RequestMapping(value = "/api/question")
@Client
public class QuestionController {
    @Autowired
    private QuestionMapper questionMapper;
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private ImgMapper imgMapper;

    /*
     *
     * 发表一条提问
     *
     */
    @ApiOperation(value = "发布一条提问")
    @PostMapping(value = "/add")
    public ResponseResult addQuestion(
            @RequestParam(required = true) Integer userId,
            @RequestParam(required = true) String content,
            String sort, MultipartFile file
            ) {
        Question question = new Question();
        question.setUserId(userId);
        question.setContent(content);
        question.setCreateTime(new Timestamp(System.currentTimeMillis()));
        question.setSort(sort);

        if (file!=null)
        {
            String img=UploadImg.ossUpload(file);
            question.setImg(img);
        }
        questionMapper.insertQuestion(question);
        return ResponseResult.success();
    }

    /*
     *
     * 发表评论
     *
     */
    @ApiOperation(value = "在提问中发表评论")
    @PostMapping(value = "/reply")
    public ResponseResult replyQuestion(
            @RequestParam(required = true) Integer userId,
            @RequestParam(required = true) String content,
            @RequestParam(required = true) Integer questionId

    ) {
        Reply reply = new Reply();
        reply.setUserId(userId);
        reply.setContent(content);
        reply.setQuestionId(questionId);
        reply.setReplyTime(new Timestamp(System.currentTimeMillis()));
        replyMapper.insertComment(reply);
        return ResponseResult.success();
    }

    @Autowired
    private CollectionMapper collectionMapper;

    //  收藏问答
    @ApiOperation(value = "收藏问答")
    @PostMapping(value = "/collectQuestion")
    public ResponseResult CollectQuestion(@RequestParam(required = true) Integer userId,
                                          @RequestParam(required = true) Integer questionId) {
        Collection collection = new Collection();
        collection.setUserId(userId);
        collection.setQuestionId(questionId);
        collectionMapper.collectQuestion(collection);
        return ResponseResult.success();
    }

    @Autowired
    private AttentionMapper attentionMapper;

    //关注提问
    @ApiOperation(value = "关注提问")
    @PostMapping(value = "/attentionQuestion")
    public ResponseResult attentionQuestion(@RequestParam(required = true) Integer userId,
                                            @RequestParam(required = true) Integer questionId) {
        Attention attention = new Attention();
        attention.setUserId(userId);
        attention.setQuestionId(questionId);
        attentionMapper.attentionQuestion(attention);
        return ResponseResult.success();
    }

    @ApiOperation(value = "所有提问")
    @PostMapping(value = "/getQuestionList")
    public ResponseResult getQuestionList() {
        List<Question> questionLists = questionMapper.getQuestionList();
        for (Question question : questionLists) {
            question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
            question.setTime(StringUtil.getDateString(question.getCreateTime()));
        }
        return ResponseResult.success(questionLists);
    }

    @ApiOperation(value = "删除‘我的提问'的问题", notes = "需要传入该问题的id")
    @GetMapping(value = "deleteMyQuestion/{id}")
    public ResponseResult deleteMyQuestion(@PathVariable Integer id) {
        if (questionMapper.deleteMyQuestion(id) == 1) {
            return new ResponseResult(StatusConst.SUCCESS, MsgConst.SUCCESS);
        }
        return new ResponseResult(StatusConst.ERROR, MsgConst.FAIL);
    }

    @Autowired
    private ExchangeServiceImp exchangeServiceImp;
    @ApiOperation(value = "后台-更新我的问答")
    @PostMapping(value = "updateQuestion")
    public ResponseResult updateQuestion(String content,String createTime)
    {
        return exchangeServiceImp.updateQuestion(content,createTime);
    }
}
