package cn.niit.group5.mapper;

import cn.niit.group5.entity.ExpertQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExpertQuestionMapper {
   void insertExpertQuestion(ExpertQuestion expertQuestion);
}