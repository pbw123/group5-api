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
}