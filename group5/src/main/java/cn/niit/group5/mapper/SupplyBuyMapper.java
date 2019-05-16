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

    //发表一则供应
    void insertSupply(SupplyBuy supplyBuy);

    //发表一则求购
    void insertSeek(SupplyBuy supplyBuy);

}