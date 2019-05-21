package cn.niit.group5.controller;



import cn.niit.group5.entity.Seed;
import cn.niit.group5.mapper.SeedMapper;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Api(tags = "作物品种模块")
@RequestMapping(value = "/api/seed")

public class SeedController {
    @Autowired
    private SeedMapper seedMapper;

    @ApiOperation(value = "遍历品种名称")
    @PostMapping(value = "/getCropNameList")
    public List<Seed> getCropNameList(){
        List<Seed> seedList=seedMapper.getCropNameList();
        return seedList;
    }

    @ApiOperation(value = "通过品种名称获取详情")
    @PostMapping(value = "/getSeedByCropName/{cropName}")
    public Seed getSeedByCropName(
            @PathVariable String cropName
    ){
        return seedMapper.getSeedByCropName(cropName);
    }
}
