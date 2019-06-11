package cn.niit.group5.controller;

import cn.niit.group5.entity.Question;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.mapper.ReplyMapper;
import cn.niit.group5.serviceImp.CollectionServiceImp;
import cn.niit.group5.serviceImp.ExchangeServiceImp;
import cn.niit.group5.serviceImp.QuestionServiceImp;
import cn.niit.group5.util.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

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

        if (file != null) {
            String img = UploadImg.ossUpload(file);
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
    @Autowired
    private CollectionServiceImp collectionServiceImp;

    //  收藏问答
    @ApiOperation(value = "收藏/取消收藏问答")
    @PostMapping(value = "/collectQuestion")
    public ResponseResult CollectQuestion(@RequestParam(required = true) Integer userId,
                                          @RequestParam(required = true) Integer questionId) {
        String column = "question_id";
        return collectionServiceImp.collectOrNo(userId, column, questionId);
    }

    @Autowired
    private QuestionServiceImp questionServiceImp;

    //关注提问
    @ApiOperation(value = "关注/取消提问")
    @PostMapping(value = "/attentionQuestion")
    public ResponseResult attentionQuestion(@RequestParam(required = true) Integer userId,
                                            @RequestParam(required = true) Integer questionId) {
        return questionServiceImp.attentionOrNo(userId, questionId);
    }

    @ApiOperation(value = "所有提问")
    @PostMapping(value = "/getQuestionList")
    public ResponseResult getQuestionList(@RequestParam(defaultValue = "1") Integer currPage,
                                          @RequestParam(defaultValue = "10") Integer pageSize) {
        return questionServiceImp.getQuestionList(currPage,pageSize);
    }

    @ApiOperation(value = "删除‘我的提问'的问题", notes = "需要传入该问题的id")
    @GetMapping(value = "deleteMyQuestion")
    public ResponseResult deleteMyQuestion(Integer id) {
        if (questionMapper.deleteMyQuestion(id) == 1) {
            return new ResponseResult(StatusConst.SUCCESS, MsgConst.SUCCESS);
        }
        return new ResponseResult(StatusConst.ERROR, MsgConst.FAIL);
    }

    @Autowired
    private ExchangeServiceImp exchangeServiceImp;

    @ApiOperation(value = "后台-更新我的问答")
    @PostMapping(value = "updateQuestion")
    public ResponseResult updateQuestion(String content, String createTime) {
        return exchangeServiceImp.updateQuestion(content, createTime);
    }
}
