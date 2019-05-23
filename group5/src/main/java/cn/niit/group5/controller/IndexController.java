package cn.niit.group5.controller;


import cn.niit.group5.entity.Module;
import cn.niit.group5.mapper.ModuleMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/news")
@Api(tags = "首页模块")
public class IndexController {

    @Autowired
    private ModuleMapper moduleMapper;

    @ApiOperation(value = "首页九宫格",notes = "选择的地区不同，看的的九宫格就不一样，所以要传入地区的id,默认江苏")
    @GetMapping(value = "selectModule/{id}")
    public List<Module> selectModule(@PathVariable int id){
        return  moduleMapper.getIndexModule(id);
    }


}
