package cn.niit.group5.mapper;

import cn.niit.group5.entity.*;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface ModuleMapper {
//    首页九宫格
    List<Module>getIndexModule(Integer id);

//点击九宫格要调用的接口
    Module getModuleById(Integer id);

//动态
    List<News>getIndexDynamic(Address address);
//头条
    List<News>getTopNews(Address address);
//    热点
    Question getIndexHotQuestion(Address address);
    Exchange getIndexHotExchange(Address address);
//后台-九宫格列表
    @Select("select * from t_module limit #{currPage},#{pageSize}")
    List<Module>getAllModuleList(@Param("currPage")Integer currPage,
                                 @Param("pageSize")Integer pageSize);
//后台-添加九宫格
    @Insert("INSERT INTO t_module(name,icon) VALUES(#{name},#{icon})")
    int addModule(Module module);
//    后台-修改九宫格
   int updateModule(Module module);
}