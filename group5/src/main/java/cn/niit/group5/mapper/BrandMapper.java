package cn.niit.group5.mapper;

import cn.niit.group5.entity.Brand;
import cn.niit.group5.entity.Commodity;
import cn.niit.group5.entity.SupplyBuy;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface BrandMapper {
    int delBrandById(Integer id);

    int insert(Brand record);

    List<Brand> selectByName(Brand brand);

    List<Brand> selectAllBrand(@Param("currPage") Integer currPage,
                               @Param("pageSize") Integer pageSize);

    int updateBrand(Brand brand);

    //    所有农资
    List<Commodity> selectAllCommodity(Commodity commodity);

    //    删除农资
    int delCommodity(Integer id);

    //    修改农资
    int updateCommodity(Commodity commodity);

    //     添加农资
    int addCommodity(Commodity commodity);

    //    搜索农资
    List<Commodity> searchCommodity(Commodity commodity);

    //    据分类和企业名称搜索农资
    List<Commodity> searchBySortSource(Commodity commodity);


}