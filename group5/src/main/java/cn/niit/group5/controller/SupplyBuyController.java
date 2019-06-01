package cn.niit.group5.controller;

import cn.niit.group5.entity.SupplyBuy;
import cn.niit.group5.mapper.SupplyBuyMapper;
import cn.niit.group5.serviceImp.SupplyBuyServiceImp;
import cn.niit.group5.util.Client;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Api(tags = "8.供求模块")
@RestController
@Client
@RequestMapping(value = "/api/supply")
public class SupplyBuyController {

    @Autowired
    private SupplyBuyMapper supplyBuyMapper;

    @ApiOperation(value = "供应列表", notes = "暂时无法上传和显示图片")
    @GetMapping(value = "supplyList")
    public ResponseResult supplyBuysList() {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.supplyList();
        return ResponseResult.success(supplyBuyList);
    }

    @ApiOperation(value = "求购列表", notes = "暂时无法上传和显示图片")
    @GetMapping(value = "seekList")
    public ResponseResult supplyBuyList() {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.seekList();
        return ResponseResult.success(supplyBuyList);
    }

    @ApiOperation(value = "发布求购")
    @PostMapping(value = "/insertSeek")
    public ResponseResult insertSeek(
            @RequestParam(required = true) int userId,
            String sort, String title, String content, String unit, int amount, int price,
            String sellerName, String sellerPhone
    ) {
        SupplyBuy supplyBuy = new SupplyBuy();
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
        supplyBuy.setCreateTime(new Date());
        supplyBuyMapper.insertSeek(supplyBuy);
        return ResponseResult.success();
    }

    @ApiOperation(value = "发布供应")
    @PostMapping(value = "/insertSupply")
    public ResponseResult insertSuppy(
            @RequestParam(required = true) int userId,
            String sort, String title, String content, String unit, int amount, int price,
            String enterprise, String sellerName, String sellerPhone
    ) {
        SupplyBuy supplyBuy = new SupplyBuy();
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
        supplyBuy.setCreateTime(new Date());
        supplyBuyMapper.insertSupply(supplyBuy);
        return ResponseResult.success();
    }

    @ApiOperation(value = "供应详情")
    @GetMapping(value = "/SupplyDetail/{id}")
    public ResponseResult getSupplyDetail(
            @PathVariable int id
    ) {
        SupplyBuy supplyDetail = supplyBuyMapper.getSupplyDetail(id);
        return ResponseResult.success(supplyDetail);
    }

    @ApiOperation(value = "求购详情")
    @GetMapping(value = "/SeekDetail/{id}")
    public ResponseResult getSeekDetail(
            @PathVariable int id
    ) {
        SupplyBuy supplyBuy = supplyBuyMapper.getSeekDetail(id);
        return ResponseResult.success(supplyBuy);
    }

    @ApiOperation(value = "分类查询")
    @GetMapping(value = "/getSupplyBySort/{sort}")
    public ResponseResult getSupplyBySort(
            @PathVariable String sort
    ) {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.getSupplyBySort(sort);
        return ResponseResult.success(supplyBuyList);
    }

    @Autowired
    private SupplyBuyServiceImp supplyBuyServiceImp;

    @ApiOperation(value = "后台-供应列表")
    @PostMapping(value = "/getSupplyList")
    public ResponseResult getSupplyList(@RequestParam(defaultValue = "1") Integer currPage,
                                        @RequestParam(defaultValue = "10") Integer pageSize) {
        int isSupply = 0;
        return supplyBuyServiceImp.getAllSupplyOrBuyList(isSupply, currPage, pageSize);
    }

    @ApiOperation(value = "后台-求购列表")
    @PostMapping(value = "/getBuyList")
    public ResponseResult getBuyList(@RequestParam(defaultValue = "1") Integer currPage,
                                     @RequestParam(defaultValue = "10") Integer pageSize) {
        int isSupply = 1;
        return supplyBuyServiceImp.getAllSupplyOrBuyList(isSupply, currPage, pageSize);
    }

    @ApiOperation(value = "后台-删除供应或者求购")
    @GetMapping(value = "delSupplyBuy/{id}")
    public Integer delSupplyBuy(@PathVariable Integer id) {
        return supplyBuyServiceImp.delSupplyOrBuy(id);
    }

}
