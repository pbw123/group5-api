package cn.niit.group5.controller;

import cn.niit.group5.mapper.SupplyBuyMapper;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Api(tags = "供求模块")
@RestController
@RequestMapping(value = "/api/supply")
public class SupplyBuyController {

    @Autowired
    private SupplyBuyMapper supplyBuyMapper;



}
