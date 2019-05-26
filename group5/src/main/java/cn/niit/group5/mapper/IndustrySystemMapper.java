package cn.niit.group5.mapper;

import cn.niit.group5.entity.ExpertGrade;
import cn.niit.group5.entity.IndustrySystem;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface IndustrySystemMapper {
    //获取产业技术体系类别
  List<IndustrySystem> getIndustrySystem();
//  体系专家列表
    List<ExpertGrade>getIndustryExpertList(@Param("sysSortId")Integer sysSortId,
                                           @Param("gradeId")Integer gradeId);

}