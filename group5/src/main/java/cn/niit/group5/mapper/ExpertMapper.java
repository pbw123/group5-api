package cn.niit.group5.mapper;

import cn.niit.group5.entity.Expert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface ExpertMapper {
Expert getExpertDetail(int id);
}