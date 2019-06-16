package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.*;
import cn.niit.group5.entity.dto.PageDTO;
import cn.niit.group5.mapper.*;
import cn.niit.group5.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

@Service
public class QuestionServiceImp {

    @Autowired
    private AttentionMapper attentionMapper;

    public ResponseResult attentionOrNo(Integer userId, Integer questionId) {
        Attention attention;
        attention = attentionMapper.getAttentionById(userId, questionId);
        if (attention == null) {
            HashMap<Object, Object> map = new HashMap<>();
            map.put("userId", userId);
            map.put("questionId", questionId);
            int index = attentionMapper.addAttention(map);
            if (index == 1) {
                attention = attentionMapper.getAttentionById(userId, questionId);
                Integer s = attention.getStatus();
                attention.setStatus(s);
                attention.setMsg("已关注");
                return ResponseResult.success(attention);
            } else {
                return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
            }

        } else {
            Integer status = attention.getStatus();
            Integer id = attention.getId();

            HashMap<Object, Object> map = new HashMap<>();
            map.put("status", status);
            map.put("id", id);
            int index = attentionMapper.updateStatus(map);
            if (index == 1) {
                attention = attentionMapper.getAttentionById(userId, questionId);
                status = attention.getStatus();
                if (status == 1) {
                    attention.setMsg("未关注");
                } else {
                    attention.setMsg("已关注");
                }
                return ResponseResult.success(attention);
            }
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
        }
    }

    @Autowired
    private CollectionMapper collectionMapper;
    @Autowired
    private QuestionMapper questionMapper;
    @Autowired
    private ImgMapper imgMapper;
    @Autowired
    private ExchangeMapper exchangeMapper;

    public ResponseResult questionDetail(Integer id, Integer userId) {
        Attention hasAttention = attentionMapper.isHasAttention(userId, id);
        String column = "question_id";
        int number = collectionMapper.getExchangeNumber(column, id);
        Collection collection = collectionMapper.getCollectionById(userId, column, id);
        Question question = questionMapper.getQuestionDetail(id);
        if (collection == null) {
            question.setStatus(1);
        } else {
            if (collection.getStatus() == 1)
                question.setStatus(1);
            else
                question.setStatus(0);
        }
        if (hasAttention == null)
            question.setIsAtten(1);
        else
            question.setIsAtten(0);
        question.setCollectNumber(number);
        question.setTime(StringUtil.getDateString(question.getCreateTime()));
        question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
        List<Reply> replies = question.getReplies();
        for (Reply reply : replies) {
            String replyColumn = "reply_id";
            Timestamp replyTime = reply.getReplyTime();
            if (replyTime != null)
                reply.setTime(StringUtil.getDateString(replyTime));
            int replyNumber = exchangeMapper.getExchangeLikeNumber(replyColumn, reply.getId());
            reply.setLike(replyNumber);
            Like likeOrNo = exchangeMapper.isLikeOrNo(userId, replyColumn, reply.getId());
            if (likeOrNo == null || likeOrNo.getStatus() == 1)
                reply.setIsLike(1);
            else
                reply.setIsLike(0);
        }
        return ResponseResult.success(question);
    }

    public ResponseResult getQuestionList(Integer currPage, Integer pageSize) {
        List<Question> lists = questionMapper.getQuestionList();
        PageDTO page = PageUtil.page(currPage, pageSize, lists);
        List<Question> questionLists = page.getList();
        for (Question question : questionLists) {
            question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
            question.setTime(StringUtil.getDateString(question.getCreateTime()));
            List<Reply> replies = question.getReplies();
            if (replies != null) {
                for (Reply reply : replies) {
                    String time = StringUtil.getDateString(reply.getReplyTime());
                    if (time != null)
                        reply.setTime(time);
                }
            }
        }
        return ResponseResult.succ(questionLists, page.getSize());
    }

    public ResponseResult getBySort(String keyword, Integer currPage,
                                    Integer pageSize) {
        List<Question> questionList = questionMapper.getQuestionBySort(keyword);
        if (questionList == null)
            return ResponseResult.success();
        PageDTO pageDTO = PageUtil.pageListDemo(currPage, pageSize, questionList);
        List<Question> dtoList = pageDTO.getList();
        for (Question question : dtoList) {
            if (question.getCreateTime() != null) {
                question.setTime(StringUtil.getDateString(question.getCreateTime()));
            }
           question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
//            回复数量
            int replyAmount = questionMapper.getReplyAmount(question.getId());
            question.setReplyAmount(replyAmount);
        }
        return ResponseResult.succ(dtoList,pageDTO.getSize());
    }
}
