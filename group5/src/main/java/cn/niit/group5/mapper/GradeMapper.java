package cn.niit.group5.mapper;

import cn.niit.group5.entity.Grade;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
@Mapper
@Component
public interface GradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Grade record);

    Grade selectByPrimaryKey(Integer id);

    List<Grade> selectAll(Map<Object,Object>map);

    int updateByPrimaryKey(Grade record);

//    搜索等级
    List<Grade>searchGrade(Map<Object,Object>map);
}