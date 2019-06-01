package cn.niit.group5.mapper;

import cn.niit.group5.entity.Word;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface WordMapper {
    int deleteById(Integer id);

    int insert(Word record);

    Word selectById(Integer id);

    List<Word> selectAll(Map<Object,Object> map);

    int updateWord(Word record);

    List<Word>searchByName(Map<Object,Object>map);

    int disableWord(@Param("status")Integer status,@Param("id")Integer id);
}