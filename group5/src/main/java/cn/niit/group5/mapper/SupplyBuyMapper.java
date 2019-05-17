package cn.niit.group5.mapper;

import cn.niit.group5.entity.SupplyBuy;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface SupplyBuyMapper {
    //供应列表
    List<SupplyBuy> supplyList();

    //求购列表
    List<SupplyBuy> seekList();

    //发表一则供应
    void insertSupply(SupplyBuy supplyBuy);

    //发表一则求购
    void insertSeek(SupplyBuy supplyBuy);

    //供应详情
   SupplyBuy getSupplyDetail(int id);

    //求购详情
    SupplyBuy getSeekDetail(int id);

    //分类查询
    List<SupplyBuy> getSupplyBySort(String sort);

}