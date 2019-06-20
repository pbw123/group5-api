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
//  查询是否曾经关注过该专家提问

  @Select(" SELECT * FROM t_attention WHERE user_id=#{userId} AND expert_question_id=#{expertQuestionId}")
  Attention getAttentionExpertById(@Param("userId") Integer userId,
                             @Param("expertQuestionId") Integer expertQuestionId);

//  添加关注
  @Insert(" INSERT INTO t_attention(user_id,question_id) VALUES(#{userId},#{questionId})")
  int addAttention(Map<Object,Object>map);

//  改变是否关注状态
     int updateStatus(Map<Object,Object> map);

//查询我关注的快速提问
  @Select("SELECT * FROM t_attention WHERE user_id=#{userId} AND question_id=#{questionId} and " +
          "status=0")
  Attention isHasAttention(@Param("userId") Integer user_id,
                           @Param("questionId") Integer questionId);

//  我关注的专家列表
  @Select("SELECT * FROM t_attention WHERE user_id=#{0} AND expert_question_id IS NOT NULL and " +
          "status=0")
  List<Attention> getMyExpertQuestionList(Integer id);
  //  查询是否曾经关注过该专家提问
  @Select(" SELECT * FROM t_attention WHERE user_id=#{userId} AND expert_question_id=#{expertQuestionId}")
  Attention getByExpertQuestionId(@Param("userId") Integer userId,
                             @Param("expertQuestionId") Integer expertQuestionId);
//  添加专家关注
  @Insert(" INSERT INTO t_attention(user_id,expert_question_id) VALUES(#{userId},#{expertQuestionId})")
  int addExpertAttention(Map<Object,Object>map);

  @Select("SELECT * FROM t_attention WHERE user_id=#{userId} AND " +
          "expert_question_id=#{expertQuestionId}" +
          " and " +
          "status=0")
  Attention isExpertHasAttention(@Param("userId") Integer user_id,
                           @Param("expertQuestionId") Integer expertQuestionId);


}