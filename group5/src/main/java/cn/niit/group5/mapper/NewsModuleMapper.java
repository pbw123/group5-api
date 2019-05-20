package cn.niit.group5.mapper;


import cn.niit.group5.entity.News;
import cn.niit.group5.entity.NewsModule;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface NewsModuleMapper {

    //遍历九宫格
    List<NewsModule> selectModule();

}