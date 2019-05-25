package cn.niit.group5.mapper;

import cn.niit.group5.entity.IndustrySystem;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface IndustrySystemMapper {
    //获取产业技术体系类别
  List<IndustrySystem> getIndustrySystem();
}