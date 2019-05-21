package cn.niit.group5.controller;


import cn.niit.group5.entity.Pest;
import cn.niit.group5.mapper.PestMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/pest")
@Api(tags = "植保库模块")
public class PestController {
    @Autowired
    private PestMapper pestMapper;

    @ApiOperation(value = "遍历名称、内容")
    @GetMapping(value = "/getPestList")
    public List<Pest> getPest(){
        return pestMapper.getPestList();
    }

    @ApiOperation(value = "通过id获取详情")
    @GetMapping(value = "getPestDetailById/{id}")
    public Pest getPestDetail(@PathVariable int id){
        return pestMapper.getPestDetailById(id);
    }
}
