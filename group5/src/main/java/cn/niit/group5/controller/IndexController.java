package cn.niit.group5.controller;


import cn.niit.group5.entity.News;
import cn.niit.group5.entity.NewsModule;
import cn.niit.group5.mapper.NewsMapper;
import cn.niit.group5.mapper.NewsModuleMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/news")
@Api(tags = "首页模块")
public class IndexController {

    @Autowired
    private NewsModuleMapper newsModuleMapper;

    @ApiOperation(value = "首页九宫格遍历")
    @GetMapping(value = "/selectModule")
    public ResponseResult selectModule(){
        List<NewsModule> list=newsModuleMapper.selectModule();
        return ResponseResult.success(list);
    }


}
