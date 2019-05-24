package cn.niit.group5.mapper;

import cn.niit.group5.entity.News;
import cn.niit.group5.entity.TechnologySort;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface TechnologySortMapper {

    List<TechnologySort> selectAll();

    List<News>getNewsBySortId(Integer id);

}