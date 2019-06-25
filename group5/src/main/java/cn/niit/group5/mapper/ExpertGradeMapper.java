package cn.niit.group5.mapper;

import cn.niit.group5.entity.ExpertGrade;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface ExpertGradeMapper {
    //据专家等级查询体系专家
    List<ExpertGrade> getIndustryExpertList(Map<Object, Object> map);

    int deleteByPrimaryKey(Integer id);
}