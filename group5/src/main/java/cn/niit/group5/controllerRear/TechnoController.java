package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.TechnoServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Manager
public class TechnoController {

    @Autowired
    private TechnoServiceImp technoServiceImp;
    @ApiOperation(value = "添加农业科技分类")
    @PostMapping(value = "addTechnoSort")
    public ResponseResult addTechnoSort(String name,String icon)
    {
       return technoServiceImp.addTechnoSort(name,icon);
    }
}
