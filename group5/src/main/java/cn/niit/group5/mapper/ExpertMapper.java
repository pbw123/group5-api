package cn.niit.group5.mapper;

import cn.niit.group5.entity.Expert;
import cn.niit.group5.entity.ExpertQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExpertMapper {
Expert getExpertDetail(int id);
//分类查找专家
List<Expert> getExpertBySort(Integer expertSort);
//农业专家里的专家
List<Expert>getAgricultureExpert(@Param("sortId") Integer sortId, @Param("gradeId") Integer gradeId);
//专家答疑列表
    @Select("SELECT eq.* FROM t_expert_question eq WHERE eq.expert_id=#{0}")
    List<ExpertQuestion> getExpertQuestionList(Integer id);

}