package cn.niit.group5.mapper;

import cn.niit.group5.entity.Question;
import cn.niit.group5.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface QuestionMapper {

    //所有的提问
    List<Question> getQuestionList();

    //我的提问列表
    List<Question> getQuestionListByUserId(int userId);

    //问题详情
    Question getQuestionDetail(Integer question_id);

    //根据id查询想添加的用户信息
    User getUserById(int userId);

    //    发布一条提问
    int insertQuestion(Question question);

    //删除我的提问文章
    @Update("UPDATE  t_question SET is_delete=1 WHERE id=#{0}")
    int deleteMyQuestion(int questionId);

    //模糊查询问答
    @Select("SELECT * FROM t_question WHERE content LIKE concat('%',#{content},'%') order by " +
            "create_time desc")
    List<Question> getQuestionBySearch(String content);

    //后台修改问题
    int updateQuestion(Question question);

    //   问题回复数量
    int getReplyAmount(Integer id);

    //    根据分类查询问题
    @Select("select * from t_question where sort like concat('%',#{keyword},'%') order by " +
            "create_time desc")
    List<Question> getQuestionBySort(@Param("keyword") String keyword);

}