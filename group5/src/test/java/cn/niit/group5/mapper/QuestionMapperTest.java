package cn.niit.group5.mapper;

import cn.niit.group5.entity.Question;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;

public class QuestionMapperTest extends BasicTest{

    @Autowired
    QuestionMapper questionMapper;
    @Test
    public void updateQuestionTest()
    {
        Question question=new Question();
        question.setContent("我的城市下雨了,你呢？");
        question.setCreateTime(new Timestamp(System.currentTimeMillis()));
        question.setId(1);
       questionMapper.updateQuestion(question);
    }
}