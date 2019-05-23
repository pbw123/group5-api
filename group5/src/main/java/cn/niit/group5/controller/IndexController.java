package cn.niit.group5.controller;


import cn.niit.group5.entity.FarmerApply;
import cn.niit.group5.entity.News;
import cn.niit.group5.entity.NewsModule;
import cn.niit.group5.mapper.FarmerApplyMapper;
import cn.niit.group5.mapper.NewsMapper;
import cn.niit.group5.mapper.NewsModuleMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/index")
@Api(tags = "首页模块")
public class IndexController {

    @Autowired
    private NewsModuleMapper newsModuleMapper;
    @Autowired
    private FarmerApplyMapper farmerApplyMapper;

    @ApiOperation(value = "首页九宫格遍历")
    @GetMapping(value = "/selectModule")
    public ResponseResult selectModule(){
        List<NewsModule> list=newsModuleMapper.selectModule();
        return ResponseResult.success(list);
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
