package cn.niit.group5.mapper;

import cn.niit.group5.entity.ExpertQuestion;
import cn.niit.group5.entity.ExpertReply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExpertQuestionMapper {
   int insertExpertQuestion(ExpertQuestion expertQuestion);

   //    专家问题详情
   ExpertQuestion expertQuestionDetail(Integer id);

//   我向专家提问的问题列表
   @Select("SELECT * FROM t_expert_question WHERE user_id=#{0} and is_delete=0")
   List<ExpertQuestion>getMyExpertQuestionList(Integer id);

//   删除专家提问
   @Update("update t_expert_question set is_delete=1 where id=#{0}")
   int delExpertQuestion(Integer id);

//   查问题的回复
   List<ExpertReply> getExpertReplys(Integer questionId);

//   专家问题
   @Select("select * from t_expert_question where id=#{0} order by create_time desc")
   ExpertQuestion getById(Integer id);

}