package cn.niit.group5.mapper;

import cn.niit.group5.entity.ExpertQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExpertQuestionMapper {
   void insertExpertQuestion(ExpertQuestion expertQuestion);

   //    专家问题详情
   List<ExpertQuestion> expertQuestionDetail(Integer id);

//   我向专家提问的问题列表
   @Select("SELECT * FROM t_expert_question WHERE user_id=#{0}")
   List<ExpertQuestion>getMyExpertQuestionList(Integer id);

}