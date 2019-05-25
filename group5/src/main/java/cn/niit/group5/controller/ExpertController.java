package cn.niit.group5.controller;


import cn.niit.group5.entity.Expert;
import cn.niit.group5.entity.ExpertQuestion;
import cn.niit.group5.entity.IndustrySystem;
import cn.niit.group5.mapper.ExpertMapper;
import cn.niit.group5.mapper.ExpertQuestionMapper;
import cn.niit.group5.mapper.IndustrySystemMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(value = "/api/expert")
@Api(tags = "专家模块")
public class ExpertController {
    @Autowired
    private ExpertQuestionMapper expertQuestionMapper;
    @Autowired
    private ExpertMapper expertMapper;
    @Autowired
    private IndustrySystemMapper industrySystemMapper;

    @ApiOperation(value = "咨询专家")
    @PostMapping(value = "insertExpertQuestion")
    public ResponseResult insertExpertQuestion(
        @RequestParam(required =true) Integer userId,
        @RequestParam(required =true) Integer expertId,
        String content
    ){
        ExpertQuestion expertQuestion=new ExpertQuestion();
        expertQuestion.setUserId(userId);
        expertQuestion.setExpertId(expertId);
        expertQuestion.setContent(content);
        expertQuestion.setCreateTime(new Date());
        expertQuestionMapper.insertExpertQuestion(expertQuestion);
        return ResponseResult.success();
    }

    @ApiOperation(value = "专家详情")
    @GetMapping(value = "getExpertDetail/{id}")
    public  ResponseResult getExpertDetail(
            @PathVariable Integer id
    ){
        Expert expert=expertMapper.getExpertDetail(id);
        return ResponseResult.success(expert);
    }

    @ApiOperation(value = "获取产业技术体系类别")
    @GetMapping(value = "getIndustrySystem")
    public ResponseResult getIndustrySystem(){
       List<IndustrySystem> industrySystems =industrySystemMapper.getIndustrySystem();
        return ResponseResult.success(industrySystems);
    }

    @ApiOperation(value = "获取一个体系类别的专家")
    @GetMapping(value = "getExpertBySort")
    public ResponseResult getExpertBySort(
            @RequestParam(required = true) Integer expertSort
    ){
        List<Expert> experts=expertMapper.getExpertBySort(expertSort);
        return ResponseResult.success(experts);
    }
}
