package cn.niit.group5.mapper;

import cn.niit.group5.entity.Reply;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface ReplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Reply record);

    Reply selectByPrimaryKey(Integer id);

    List<Reply> selectAll();

    int updateByPrimaryKey(Reply record);
}