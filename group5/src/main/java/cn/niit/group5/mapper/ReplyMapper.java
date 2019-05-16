package cn.niit.group5.mapper;

import cn.niit.group5.entity.Reply;
import org.apache.ibatis.annotations.Mapper;
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
}