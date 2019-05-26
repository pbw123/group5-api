package cn.niit.group5.mapper;

import cn.niit.group5.entity.Expert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExpertMapper {
Expert getExpertDetail(int id);
//分类查找专家
List<Expert> getExpertBySort(Integer expertSort);

//模糊查询专家
    @Select("SELECT * FROM t_expert WHERE expert_name LIKE concat('%',#{expertName},'%')")
   List<Expert> getExpertBySearch(String expertName);
}