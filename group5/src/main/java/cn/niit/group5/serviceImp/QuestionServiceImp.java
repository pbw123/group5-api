package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Attention;
import cn.niit.group5.entity.Collection;
import cn.niit.group5.entity.Question;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.entity.dto.CollectDTO;
import cn.niit.group5.mapper.AttentionMapper;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import cn.niit.group5.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class QuestionServiceImp {

    @Autowired
    private AttentionMapper attentionMapper;

    public ResponseResult attentionOrNo(Integer userId, Integer questionId) {
        CollectDTO collectDTO = new CollectDTO();
        Attention attention;
        attention=attentionMapper.getAttentionById(userId, questionId);
        if (attention == null) {
            HashMap<Object, Object> map = new HashMap<>();
            map.put("userId",userId);
            map.put("questionId",questionId);
            int index = attentionMapper.addAttention(map);
            if (index == 1) {
                attention=attentionMapper.getAttentionById(userId, questionId);
                Integer s = attention.getStatus();
                collectDTO.setStatus(s);
                collectDTO.setMsg("已关注");
                return ResponseResult.success(collectDTO);
            } else {
                return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
            }

        } else {
            Integer status = attention.getStatus();
            Integer id = attention.getId();

            HashMap<Object, Object> map = new HashMap<>();
            map.put("status",status);
            map.put("id",id);
            int index = attentionMapper.updateStatus(map);
            if (index == 1) {
                attention = attentionMapper.getAttentionById(userId, questionId);
                status= attention.getStatus();
                collectDTO.setStatus(status);
                if (status == 1) {
                    collectDTO.setMsg("未关注");
                } else {
                    collectDTO.setMsg("已关注");
                }
                return ResponseResult.success(collectDTO);
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
    public ResponseResult questionDetail(Integer id,Integer userId)
    {
        Attention hasAttention = attentionMapper.isHasAttention(userId, id);
        String column="question_id";
        int number = collectionMapper.getExchangeNumber(column, id);
        Collection collection = collectionMapper.getCollectionById(userId, column, id);
        Question question = questionMapper.getQuestionDetail(id);
        if (collection==null)
        {
            question.setIsCollect(1);
        }else {
            if (collection.getStatus()==1)
                question.setIsCollect(1);
            else
                question.setIsCollect(0);
        }
        if (hasAttention==null)
            question.setStatus(1);
        else
            question.setStatus(0);
        question.setCollectNumber(number);
        question.setTime(StringUtil.getDateString(question.getCreateTime()));
        question.setImgs(imgMapper.selectImgByQuestionId(question.getId()));
        List<Reply> replies = question.getReplies();
        for (Reply reply : replies) {
            reply.setTime(StringUtil.getDateString(reply.getReplyTime()));
        }
        return ResponseResult.success(question);
    }
}
