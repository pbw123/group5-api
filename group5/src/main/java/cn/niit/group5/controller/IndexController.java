package cn.niit.group5.controller;

import cn.niit.group5.entity.FarmerApply;
import cn.niit.group5.entity.Module;
import cn.niit.group5.mapper.FarmerApplyMapper;
import cn.niit.group5.mapper.ModuleMapper;
import cn.niit.group5.mapper.NewsModuleMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/index")
@Api(tags = "首页模块")
public class IndexController {

    @Autowired
    private NewsModuleMapper newsModuleMapper;
    @Autowired
    private FarmerApplyMapper farmerApplyMapper;
    @Autowired
    private ModuleMapper moduleMapper;

    @ApiOperation(value = "首页九宫格",notes = "选择的地区不同，看的的九宫格就不一样，所以要传入地区的id,默认江苏")
    @GetMapping(value = "selectModule/{id}")
    public List<Module> selectModule(@PathVariable int id){
        return  moduleMapper.getIndexModule(id);
    }

    @ApiOperation(value = "点击九宫格都需要调用的接口",notes = "传入该模块功能的id")
    @GetMapping(value = "getModuleDetails/{id}")
    public ResponseResult getModuleDetails(@PathVariable Integer id)
    {
        Module module = moduleMapper.getModuleById(id);
        return new ResponseResult(id,module.getName()+"页面");
    }


    @ApiOperation(value ="云上智农添加申报信息")
    @PostMapping(value = "/insertApplyMessage")
    public ResponseResult insertApplyMessage(
            String userName, String sex,String identityNumber, String phoneNumber,String education,
            String job,String jobAddress,String jobSize,Integer ageLimit, String sizeUnit,String userSort,Integer state
    ){
      FarmerApply farmerApply=new FarmerApply();
      farmerApply.setUserName(userName);
      farmerApply.setSex(sex);
      farmerApply.setIdentityNumber(identityNumber);
      farmerApply.setPhoneNumber(phoneNumber);
      farmerApply.setEducation(education);
      farmerApply.setJob(job);
      farmerApply.setJobAddress(jobAddress);
      farmerApply.setJobSize(jobSize);
      farmerApply.setAgeLimit(ageLimit);
      farmerApply.setSizeUnit(sizeUnit);
      farmerApply.setUserSort(userSort);
      farmerApply.setState(state);
      farmerApplyMapper.insertApplyMessage(farmerApply);
      return ResponseResult.success();
    }



}
