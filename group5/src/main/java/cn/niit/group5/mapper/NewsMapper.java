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
    @Select("SELECT * FROM t_news WHERE news_sort_id=#{0} AND is_delete=0")
    List<News> selectAllBySortId(int sortId);


//头条
    @Select("SELECT * FROM t_news  WHERE is_delete=0 AND address_id=#{address Id} order by read_number desc")
    List<News> getHotNews(Integer addressId);

//动态
    @Select("SELECT * FROM t_news  WHERE is_delete=0 AND address_id=#{addressId} order by create_time desc ")
    List<News> getNewsList(Integer addressId);

}