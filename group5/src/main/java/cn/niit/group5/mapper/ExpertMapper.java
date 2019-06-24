package cn.niit.group5.mapper;

import cn.niit.group5.entity.Expert;
import cn.niit.group5.entity.ExpertQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface ExpertMapper {

Expert getExpertDetail(int id);
//分类查找专家
List<Expert> getExpertBySort(Integer expertSort);
//农业专家里的专家
List<Expert>getAgricultureExpert(@Param("sortId") Integer sortId, @Param("gradeId") Integer gradeId);
//专家答疑列表
    @Select("SELECT eq.* FROM t_expert_question eq WHERE eq.expert_id=#{0}    ORDER BY eq.create_time DESC")
    List<ExpertQuestion> getExpertQuestionList(Integer id);

//    专家问题详情
    List<ExpertQuestion>expertQuestionDetail(Integer id);

//模糊查询专家
    @Select("SELECT * FROM t_expert WHERE expert_name LIKE concat('%',#{expertName},'%')")
   List<Expert> getExpertBySearch(String expertName);
//删除专家问答
    @Update("UPDATE t_expert_question SET is_delete=1 WHERE id=#{0}")
    int delExpertQuestion(Integer id);
//    修改专家问答的内容
    @Update("update t_expert_question set content=#{content} where id=#{id}")
    int updateExpertQuestion(@Param("content")String content,@Param("id")Integer id);
//所有专家列表
    List<Expert>selectAll();

//    添加专家
    int addExpert(Expert expert);

//    修改专家
    int updateExpert(Expert expert);

//    改变专家状态
    int updateStatus(Map<Object,Object>map);

//    据id查询专家
    Expert selectById(Integer id);

//    搜索专家
    List<Expert>search(Map<Object,Object>map);
//该专家被提问的次数
    @Select("SELECT COUNT(expert_id)  FROM t_expert_question WHERE expert_id=#{0} AND is_delete=0")
    int getNumber(Integer id);


}