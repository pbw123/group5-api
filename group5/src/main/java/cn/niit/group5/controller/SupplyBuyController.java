package cn.niit.group5.controller;

import cn.niit.group5.serviceImp.SupplyBuyServiceImp;
import cn.niit.group5.util.Client;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Api(tags = "8.供求模块")
@RestController
@Client
@RequestMapping(value = "/api/supply")
public class SupplyBuyController {

    @ApiOperation(value = "供应列表")
    @GetMapping(value = "supplyList")
    public ResponseResult supplyList(Integer currPage,Integer pageSize) {
        return supplyBuyServiceImp.supplyList(currPage,pageSize);
    }

    @ApiOperation(value = "求购列表")
    @GetMapping(value = "seekList")
    public ResponseResult seekList(Integer currPage,Integer pageSize) {
        return supplyBuyServiceImp.buyList(currPage,pageSize);
    }

    @ApiOperation(value = "发布求购")
    @PostMapping(value = "/insertSeek")
    public ResponseResult insertSeek(Integer userId, String sort, String title, String content, String unit, Integer amount, Integer price,
            String sellerName, String sellerPhone,String[] imgs) {
        return supplyBuyServiceImp.addSeek(userId, sort, title, content, unit, amount, price,
                sellerName,
                sellerPhone,imgs);
    }

    @ApiOperation(value = "发布供应")
    @PostMapping(value = "/insertSupply")
    public int insertSupply(Integer userId,
            String sort, String title, String content, String unit, Integer amount, Integer price,
            String enterprise, String sellerName, String sellerPhone,String[]imgs) {
        return supplyBuyServiceImp.addSupply(userId, sort, title, content, unit, amount, price,
                enterprise, sellerName,
                sellerPhone,imgs);
    }

    @ApiOperation(value = "供应详情")
    @GetMapping(value = "/SupplyDetail")
    public ResponseResult getSupplyDetail(Integer id) {
        return supplyBuyServiceImp.getDetail(id);
    }

    @ApiOperation(value = "求购详情")
    @GetMapping(value = "/SeekDetail")
    public ResponseResult getSeekDetail(Integer id) {
        return supplyBuyServiceImp.seekDetail(id);
    }

    @ApiOperation(value = "分类查询")
    @GetMapping(value = "/getSupplyBySort")
    public ResponseResult getSupplyBySort(String sort) {
        return supplyBuyServiceImp.getBySort(sort);
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
