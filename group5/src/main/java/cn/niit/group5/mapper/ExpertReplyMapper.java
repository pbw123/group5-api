package cn.niit.group5.mapper;

import cn.niit.group5.entity.ExpertReply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExpertReplyMapper {

    //    查询专家回复
    @Select("SELECT * FROM t_expert_reply WHERE question_id=#{0}")
    List<ExpertReply> getQuestionReply(Integer questionId);
}