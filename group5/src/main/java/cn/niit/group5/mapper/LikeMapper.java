package cn.niit.group5.mapper;

import cn.niit.group5.entity.Like;
import java.util.List;

public interface LikeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Like record);

    Like selectByPrimaryKey(Integer id);

    List<Like> selectAll();

    int updateByPrimaryKey(Like record);
}