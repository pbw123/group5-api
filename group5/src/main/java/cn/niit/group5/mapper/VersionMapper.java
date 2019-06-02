package cn.niit.group5.mapper;

import cn.niit.group5.entity.Version;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface VersionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Version record);

    Version selectById(Integer id);

    List<Version> selectAll();

    int updateById(Version record);
}