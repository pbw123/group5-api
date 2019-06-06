package cn.niit.group5.mapper;

import cn.niit.group5.entity.Reply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ReplyMapper {
    List<Reply> getMyReplyById(int userId);
    /*
     * 发表一条评论
     */
    void insertComment(Reply reply);
    void insertComment1(Reply reply);

    @Update("update t_reply set is_delete=1 where id=#{id}")
    int delReply(@Param("id")Integer id);
}