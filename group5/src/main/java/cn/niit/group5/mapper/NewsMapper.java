package cn.niit.group5.mapper;

import cn.niit.group5.entity.News;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface NewsMapper {
//根据分类查询农资
    @Select("SELECT * FROM t_news WHERE  is_delete=0")
    List<News> selectAllBySortId(int sortId);

//

}