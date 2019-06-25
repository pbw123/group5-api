package cn.niit.group5.mapper;

import cn.niit.group5.entity.Commodity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface CommodityMapper {
    //通过分类sort_id遍历出相应资讯
    List<Commodity> getCommdityBysortId(Integer sortId);
}