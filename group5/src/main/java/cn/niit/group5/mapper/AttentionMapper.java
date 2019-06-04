package cn.niit.group5.mapper;


import cn.niit.group5.entity.Attention;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface AttentionMapper {
  //关注一个提问
    void attentionQuestion(Attention attention);

  //我的关注列表
  List<Attention> getAttentionByUserId(int userId);

//  查询是否曾经关注过该提问

  @Select(" SELECT * FROM t_attention WHERE user_id=#{userId} AND question_id=#{questionId}")
  Attention getAttentionById(@Param("userId") Integer user_id,
                             @Param("questionId") Integer question_id);

//  添加关注
  @Insert(" INSERT INTO t_attention(user_id,question_id) VALUES(#{userId},#{questionId})")
  int addAttention(Map<Object,Object>map);

//  改变是否关注状态
     int updateStatus(Map<Object,Object> map);

}