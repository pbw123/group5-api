package cn.niit.group5.mapper;

import cn.niit.group5.entity.Exhibition;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExhibitionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Exhibition record);

    Exhibition selectByPrimaryKey(Integer id);

    //查询所有展播
    List<Exhibition> selectAll(@Param("currPage") Integer currPage,
                               @Param("pageSize") Integer pageSize);

    int updateByPrimaryKey(Exhibition record);

    //据关键字模糊匹配展播标题
    @Select("SELECT * FROM t_exhibition WHERE title LIKE concat('%',#{title},'%')")
    List<Exhibition> searchExhibition(@Param("title") String title);
}