package cn.niit.group5.mapper;

import cn.niit.group5.entity.Expert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExpertMapper {
Expert getExpertDetail(int id);
//分类查找专家
List<Expert> getExpertBySort(Integer expertSort);

}