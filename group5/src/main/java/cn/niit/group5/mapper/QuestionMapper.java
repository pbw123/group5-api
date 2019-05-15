package cn.niit.group5.mapper;

import cn.niit.group5.entity.Question;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface QuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Question record);

    Question selectByPrimaryKey(Integer id);

//    根据用户id查询我的所有提问
    List<Question> selectAllByUserId(int id);

    int updateByPrimaryKey(Question record);
}