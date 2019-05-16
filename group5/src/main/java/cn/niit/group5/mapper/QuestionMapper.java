package cn.niit.group5.mapper;

import cn.niit.group5.entity.Question;
import cn.niit.group5.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface QuestionMapper {

    //    根据用户id查询我的所有提问
    List<Question> selectAllByUserId(int id);


    //我的提问列表
    List<Question> getQuestionListByUserId(int userId);

    //我的问题详情
    Question getQuestionDetail(int question_id);

    //根据id查询想添加的用户信息
    User getUserById(int userId);

    //    发布一条提问
    void insertQuestion(Question question);
}