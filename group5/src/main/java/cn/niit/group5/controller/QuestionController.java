package cn.niit.group5.controller;

import cn.niit.group5.entity.Attention;
import cn.niit.group5.entity.Collection;
import cn.niit.group5.entity.Question;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.AttentionMapper;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.mapper.ReplyMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;


@RestController
@Api(tags = "快速提问")
@RequestMapping(value = "/api/question")
public class QuestionController {
    @Autowired
    private QuestionMapper questionMapper;
    @Autowired
    private ReplyMapper replyMapper;

    /*
     *
     * 发表一条提问
     *
     */
    @ApiOperation(value = "发布一条提问")
    @PostMapping(value = "/add")
    public ResponseResult addQuestion(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) String content,
            String sort
    ){
        Question question=new Question();
        question.setUserId(userId);
        question.setContent(content);
        question.setCreateTime(new Date());
        question.setSort(sort);
        questionMapper.insertQuestion(question);
        return ResponseResult.success(question.getId());
    }

    /*
     *
     * 发表评论
     *
     */
    @ApiOperation(value = "在提问中发表评论")
    @PostMapping(value = "/reply")
    public ResponseResult replyQuestion(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) String content,
            @RequestParam(required = true) int questionId

    ){
        Reply reply=new Reply();
        reply.setUserId(userId);
        reply.setContent(content);
        reply.setQuestionId(questionId);
        reply.setReplyTime(new Date());
        replyMapper.insertComment(reply);
        return ResponseResult.success(reply.getId());
    }

    @Autowired
    private CollectionMapper collectionMapper;

    //  收藏问答
    @ApiOperation(value = "收藏问答")
    @PostMapping(value = "/collectQuestion")
    public ResponseResult CollectQuestion(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) int questionId
    ){
        Collection collection=new Collection();
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
    public ResponseResult attentionQuestion(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) int questionId
    ){
        Attention attention=new Attention();
        attention.setUserId(userId);
//        attention.setQuestionId(questionId);
        attentionMapper.attentionQuestion(attention);
        return ResponseResult.success();
    }

//    
}
