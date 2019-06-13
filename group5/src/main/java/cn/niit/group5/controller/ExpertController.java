package cn.niit.group5.controller;

import cn.niit.group5.entity.*;
import cn.niit.group5.entity.dto.ExpertDTO;
import cn.niit.group5.entity.dto.IndustryDTO;
import cn.niit.group5.mapper.ExpertMapper;
import cn.niit.group5.mapper.ExpertQuestionMapper;
import cn.niit.group5.mapper.IndustrySystemMapper;
import cn.niit.group5.serviceImp.IndustryServerImp;
import cn.niit.group5.util.Client;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StringUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.List;

@RestController
@RequestMapping(value = "/api/expert")
@Api(tags = "9.专家模块")
@Client
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
            @RequestParam(required = true) Integer userId,
            @RequestParam(required = true) Integer expertId,
            String content
    ) {
        ExpertQuestion expertQuestion = new ExpertQuestion();
        expertQuestion.setUserId(userId);
        expertQuestion.setExpertId(expertId);
        expertQuestion.setContent(content);
        expertQuestion.setCreateTime(new Timestamp(System.currentTimeMillis()));
        expertQuestionMapper.insertExpertQuestion(expertQuestion);
        return ResponseResult.success();
    }

    @ApiOperation(value = "专家详情/有咨询专家按钮的那个页面",notes = "传入该专家的id/点击专家头像用这个接口")
    @GetMapping(value = "getExpertDetail")
    public ResponseResult getExpertDetail(Integer id) {
        Expert expert = expertMapper.getExpertDetail(id);
        List<ExpertQuestion> expertQuestions=expertMapper.getExpertQuestionList(id);
        ExpertDTO expertDTO=new ExpertDTO();
        expertDTO.setExpert(expert);
        expertDTO.setExpertQuestions(expertQuestions);
        return ResponseResult.success(expertDTO);
    }

    @ApiOperation(value = "获取产业技术体系类别")
    @GetMapping(value = "getIndustrySystem")
    public ResponseResult getIndustrySystem() {
        List<IndustrySystem> industrySystems = industrySystemMapper.getIndustrySystem();
        return ResponseResult.success(industrySystems);
    }

    @ApiOperation(value = "获取一个体系类别的专家")
    @GetMapping(value = "getExpertBySort")
    public ResponseResult getExpertBySort(
            @RequestParam(required = true) Integer expertSort
    ) {
        List<Expert> experts = expertMapper.getExpertBySort(expertSort);
        return ResponseResult.success(experts);
    }

    @ApiOperation(value = "获取农业专家", notes = "传入分类的id和等级的id,等级客户端指定，1是省级，2是地方级")
    @GetMapping(value = "getAgricultureExpert")
    public ResponseResult getAgricultureExpert(Integer sortId,Integer gradeId) {
        List<Expert> experts = expertMapper.getAgricultureExpert(sortId, gradeId);
        return ResponseResult.success(experts);
    }

    @ApiOperation(value = "获取该专家被别人问的问题列表", notes = "传入该专家的id")
    @GetMapping(value = "getExpertQuestionList")
    public ResponseResult getExpertQuestionList(Integer id) {
        List<ExpertQuestion> experts = expertMapper.getExpertQuestionList(id);
        return ResponseResult.success(experts);
    }

    @ApiOperation(value = "专家问题详情", notes = "传入该专家的id")
    @GetMapping(value = "getExpertQuestionDetail")
    public ResponseResult getExpertQuestionDetail(Integer id) {
        ExpertQuestion experts = expertQuestionMapper.expertQuestionDetail(id);
        List<ExpertReply> expertReplys = experts.getExpertReplys();
        for (ExpertReply reply:expertReplys)
        {
            reply.setTime(StringUtil.getDateString(reply.getCreateTime()));
        }
        return ResponseResult.success(experts);
    }

    @Autowired
    private IndustryServerImp industryServerImp;

    @ApiOperation(value = "产业技术体系中的专家列表", notes = "传入该体系的id")
    @GetMapping(value = "getIndustryExpertList")
    public ResponseResult getIndustryExpertList(Integer id) {
        List<ExpertGrade> chiefExpertList = industryServerImp.getChiefExpertList(id);
        List<ExpertGrade> postExpertList = industryServerImp.getPostExpertList(id);
        List<ExpertGrade> basicExpertList = industryServerImp.getBasicExpertList(id);
        IndustryDTO industryDTO = new IndustryDTO();
        industryDTO.setChiefExpertList(chiefExpertList);
        industryDTO.setPostExpertList(postExpertList);
        industryDTO.setBasicExpertList(basicExpertList);
        return ResponseResult.success(industryDTO);
    }

}
