package cn.niit.group5.controller;

import cn.niit.group5.entity.SupplyBuy;
import cn.niit.group5.mapper.SupplyBuyMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Api(tags = "供求模块")
@RestController
@RequestMapping(value = "/api/supply")
public class SupplyBuyController {

    @Autowired
    private SupplyBuyMapper supplyBuyMapper;

    @ApiOperation(value = "供应列表",notes = "暂时无法上传和显示图片")
    @GetMapping(value = "supplyList")
    public List<SupplyBuy> supplyBuysList()
    {
        return supplyBuyMapper.supplyList();
    }

    @ApiOperation(value = "发布求购")
    @PostMapping(value = "/insertSeek")
    public ResponseResult insertSeek(
            @RequestParam(required = true) int userId,
            String sort, String title, String content, String unit, int amount, int price, String sellerName,String sellerPhone
            ){
        SupplyBuy supplyBuy=new SupplyBuy();
        supplyBuy.setUserId(userId);
        supplyBuy.setSort(sort);
        supplyBuy.setTitle(title);
        supplyBuy.setContent(content);
        supplyBuy.setUnit(unit);
        supplyBuy.setAmount(amount);
        supplyBuy.setPrice(price);
        supplyBuy.setSellerName(sellerName);
        supplyBuy.setSellerPhone(sellerPhone);
        supplyBuy.setIsSupplyBuy(1);
        supplyBuyMapper.insertSeek(supplyBuy);
        return ResponseResult.success();
    }

    @ApiOperation(value = "发布供应")
    @PostMapping(value = "/insertSupply")
    public ResponseResult insertSuppy(
            @RequestParam(required = true) int userId,
            String sort, String title, String content,String unit, int amount, int price,String enterprise,String sellerName,String sellerPhone
    ){
        SupplyBuy supplyBuy=new SupplyBuy();
        supplyBuy.setUserId(userId);
        supplyBuy.setSort(sort);
        supplyBuy.setTitle(title);
        supplyBuy.setContent(content);
        supplyBuy.setUnit(unit);
        supplyBuy.setAmount(amount);
        supplyBuy.setPrice(price);
        supplyBuy.setEnterprise(enterprise);
        supplyBuy.setSellerName(sellerName);
        supplyBuy.setSellerPhone(sellerPhone);
        supplyBuy.setIsSupplyBuy(0);
        supplyBuyMapper.insertSupply(supplyBuy);
        return ResponseResult.success();
    }
}
