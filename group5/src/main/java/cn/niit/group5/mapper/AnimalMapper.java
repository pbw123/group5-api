package cn.niit.group5.mapper;

import cn.niit.group5.entity.Animal;
import cn.niit.group5.entity.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface AnimalMapper {

//畜禽品种库
     @Select("SELECT * FROM t_animal")
    List<Animal> selectAllAnimal();

//根据畜禽品种查询资讯文章
    @Select("SELECT * FROM t_news WHERE animal_sort_id=#{0}")
    List<News> AnimalNews(int animalId);


}