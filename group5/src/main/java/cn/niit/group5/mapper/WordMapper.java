package cn.niit.group5.mapper;

import cn.niit.group5.entity.Word;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface WordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Word record);

    Word selectByPrimaryKey(Integer id);

    List<Word> selectAll();

    int updateByPrimaryKey(Word record);
}