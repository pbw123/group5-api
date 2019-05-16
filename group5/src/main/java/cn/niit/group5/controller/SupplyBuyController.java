package cn.niit.group5.controller;

import cn.niit.group5.entity.SupplyBuy;
import cn.niit.group5.mapper.SupplyBuyMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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


}
