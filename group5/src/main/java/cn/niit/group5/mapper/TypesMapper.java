package cn.niit.group5.mapper;

import cn.niit.group5.entity.Types;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface TypesMapper {
    int delType(Integer id);

    int insert(Types record);

    Types selectById(Integer id);

    List<Types> selectAll(Map<String, Object> map);

    int updateType(Types record);
}