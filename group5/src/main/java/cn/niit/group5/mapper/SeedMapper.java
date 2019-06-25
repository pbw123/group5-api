package cn.niit.group5.mapper;

import cn.niit.group5.entity.Seed;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface SeedMapper {

    //遍历品种名称
    List<Seed> getCropNameList();

    //通过品种名称获取详情
    Seed getSeedByCropName(String cropName);

    //    按条件筛选作物品种
    List<Seed> searchSeed(Seed seed);
}