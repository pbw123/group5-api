package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Attention;
import cn.niit.group5.entity.dto.CollectDTO;
import cn.niit.group5.mapper.AttentionMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

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
}
