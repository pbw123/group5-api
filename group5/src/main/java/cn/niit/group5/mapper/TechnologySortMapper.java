package cn.niit.group5.mapper;

import cn.niit.group5.entity.News;
import cn.niit.group5.entity.TechnologySort;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface TechnologySortMapper {
    List<TechnologySort> selectAll(Map<Object,Object>map);

    List<News>getNewsBySortId(Integer id);
//添加农业科技分类
    @Insert("INSERT INTO t_technology_sort(name,icon) VALUES(#{name},#{icon})")
    int addSortTechno(@Param("name") String name,@Param("icon")String icon);

    int deleteByPrimaryKey(Integer id);

    int insert(TechnologySort record);

    TechnologySort selectByPrimaryKey(Integer id);

    int updateByPrimaryKey(TechnologySort record);

//    批量删除
    int delByArrayList(@Param("ids") int[] ids);

//    据id查询对应类型名
    @Select("select name from t_technology_sort where id=#{0}")
    TechnologySort getById(Integer id);
}