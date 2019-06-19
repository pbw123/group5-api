package cn.niit.group5.controller;

import cn.niit.group5.entity.Expert;
import cn.niit.group5.entity.ExpertGrade;
import cn.niit.group5.entity.IndustrySystem;
import cn.niit.group5.entity.dto.IndustryDTO;
import cn.niit.group5.mapper.ExpertMapper;
import cn.niit.group5.mapper.ExpertQuestionMapper;
import cn.niit.group5.mapper.IndustrySystemMapper;
import cn.niit.group5.serviceImp.ExpertServiceImp;
import cn.niit.group5.serviceImp.IndustryServerImp;
import cn.niit.group5.util.Client;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    @Autowired
    private ExpertServiceImp expertServiceImp;

    @ApiOperation(value = "咨询专家")
    @PostMapping(value = "insertExpertQuestion")
    public ResponseResult insertExpertQuestion(Integer userId, Integer expertId, String content,
                                               String[] imgs,String address) {
        return expertServiceImp.addExpertQuestion(userId, expertId, content, imgs,address);
    }

    @ApiOperation(value = "专家详情/有咨询专家按钮的那个页面", notes = "传入该专家的id/点击专家头像用这个接口")
    @GetMapping(value = "getExpertDetail")
    public ResponseResult getExpertDetail(Integer id) {
        return expertServiceImp.getExpertDetail(id);
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
    public ResponseResult getAgricultureExpert(Integer sortId, Integer gradeId) {
        List<Expert> experts = expertMapper.getAgricultureExpert(sortId, gradeId);
        return ResponseResult.success(experts);
    }

    @ApiOperation(value = "获取该专家被别人问的问题列表", notes = "传入该专家的id")
    @GetMapping(value = "getExpertQuestionList")
    public ResponseResult getExpertQuestionList(Integer id, Integer currPage, Integer pageSize) {
        return expertServiceImp.getQuestionList(id, currPage, pageSize);
    }

    @ApiOperation(value = "专家问题详情", notes = "传入该专家的id")
    @GetMapping(value = "getExpertQuestionDetail")
    public ResponseResult getExpertQuestionDetail(Integer id, Integer userId) {
        return expertServiceImp.expertQuestionDetail(id, userId);
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
