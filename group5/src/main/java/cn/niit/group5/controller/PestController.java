package cn.niit.group5.controller;


import cn.niit.group5.entity.Pest;
import cn.niit.group5.mapper.PestMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/pest")
@Api(tags = "植保库模块")
public class PestController {
    @Autowired
    private PestMapper pestMapper;

    @ApiOperation(value = "遍历植保库名称、内容")
    @GetMapping(value = "/getPestList")
    public ResponseResult getPest(){
        List<Pest> pestList = pestMapper.getPestList();
        return ResponseResult.success(pestList);
    }

    @ApiOperation(value = "通过植保库id获取详情")
    @GetMapping(value = "getPestDetailById/{id}")
    public ResponseResult getPestDetail(@RequestParam(required = true) @PathVariable Integer id){
        Pest pest = pestMapper.getPestDetailById(id);
        return ResponseResult.success(pest);
    }
    @ApiOperation(value = "根据条件筛选植保文章")
    @PostMapping(value = "searchPest")
    public ResponseResult searchPest(String breed, String area, String month){
        List<Pest> pests = pestMapper.searchPest(breed, area, month);
        return  ResponseResult.success(pests);
    }
}
