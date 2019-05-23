package cn.niit.group5.mapper;

import cn.niit.group5.entity.Pest;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;


    @Mapper
    @Component
    public interface PestMapper {
        //遍历名称、内容
        List<Pest> getPestList();
        //通过id获取详情
         Pest getPestDetailById(int id);
}