package cn.niit.group5.mapper;

import cn.niit.group5.entity.*;
import org.apache.ibatis.annotations.Mapper;
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
}