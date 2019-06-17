package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.*;
import cn.niit.group5.entity.dto.ExpertDTO;
import cn.niit.group5.entity.dto.PageDTO;
import cn.niit.group5.mapper.*;
import cn.niit.group5.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ExpertServiceImp {
    @Autowired
    private ExpertMapper expertMapper;

    public ResponseResult delExpertQeustion(Integer id) {
        int i = expertMapper.delExpertQuestion(id);
        if (i == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult updateExpertQuestion(String content, Integer id) {
        int i = expertMapper.updateExpertQuestion(content, id);
        if (i == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult getAllExpert(Integer currPage, Integer pageSize) {
        List<Expert> experts = expertMapper.selectAll();
        PageDTO page = PageUtil.pageListDemo(currPage, pageSize, experts);
        List<Expert> pageList = page.getList();
        return ResponseResult.succ(pageList,page.getSize());
    }

    public Integer addExpert(String expertName, String unitName, String email,
                             String profession, String resume, Integer sysSort,
                             Integer expertSort, String jobTitle, Integer checkAll,
                             String phoneNumber, Integer score, MultipartFile file) {
        Expert expert = new Expert();
        expert.setCheckAll(checkAll);
        expert.setEmail(email);
        expert.setExpertName(expertName);
        expert.setExpertSort(expertSort);
        expert.setResume(resume);
        expert.setJobTitle(jobTitle);
        expert.setScore(score);
        expert.setUnitName(unitName);
        expert.setPhoneNumber(phoneNumber);
        expert.setProfession(profession);
        expert.setSysSort(sysSort);
        if (file != null) {
            String s = UploadImg.ossUpload(file);
            expert.setHeadImg(s);
        }
        int i = expertMapper.addExpert(expert);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer changeExpert(String name, String sort, String grade, String unitName,
                                String profession, String phoneName, Integer check, Integer score) {
        Expert expert = new Expert();
        expert.setProfession(profession);
        expert.setSort(sort);
        expert.setGrade(grade);
        expert.setCheckAll(check);
        expert.setPhoneNumber(phoneName);
        expert.setUnitName(unitName);
        expert.setScore(score);
        expert.setExpertName(name);
        int i = expertMapper.updateExpert(expert);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;

    }

    public ResponseResult changeStatus(Integer state, Integer id) {
        HashMap<Object, Object> map = new HashMap<>();
        map.put("state", state);
        map.put("id", id);
        int i = expertMapper.updateStatus(map);
        if (i == 1) {
            Expert expert = expertMapper.selectById(id);
            Integer s = expert.getState();
            return ResponseResult.success(s);
        } else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult searchExpertList(String keyword, String sortName, String grade,
                                           Integer currPage, Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        map.put("keyword", keyword);
        map.put("sortName", sortName);
        map.put("grade", grade);
        List<Expert> experts = expertMapper.search(map);
        return ResponseResult.success(experts);
    }

    @Autowired
    private GradeMapper gradeMapper;

    public ResponseResult getAllGradeList(Integer currPage, Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        List<Grade> grades = gradeMapper.selectAll(map);
        return ResponseResult.success(grades);
    }

    public Integer removeGrade(Integer id) {
        int i = gradeMapper.deleteByPrimaryKey(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getGradeById(Integer id) {
        Grade grade = gradeMapper.selectByPrimaryKey(id);
        return ResponseResult.success(grade);
    }

    public Integer addGrade(String name, String sort) {
        Grade grade = new Grade();
        grade.setGrade(name);
        grade.setSort(sort);
        int insert = gradeMapper.insert(grade);
        if (insert == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateGrade(Integer id, String name, String sort) {
        Grade grade = new Grade();
        grade.setSort(sort);
        grade.setGrade(name);
        grade.setId(id);
        int i = gradeMapper.updateByPrimaryKey(grade);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult searchGrade(String keyword, Integer currPage, Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        map.put("keyword", keyword);
        List<Grade> grades = gradeMapper.searchGrade(map);
        return ResponseResult.success(grades);
    }

    @Autowired
    private TechnologySortMapper technologySortMapper;

    public Integer addSort(String name, String icon) {
        TechnologySort technologySort = new TechnologySort();
        technologySort.setIcon(icon);
        technologySort.setName(name);
        int insert = technologySortMapper.insert(technologySort);
        if (insert == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer removeSort(Integer id) {
        int i = technologySortMapper.deleteByPrimaryKey(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateById(Integer id, String name, String icon) {
        TechnologySort technologySort = new TechnologySort();
        technologySort.setIcon(icon);
        technologySort.setId(id);
        technologySort.setName(name);
        int i = technologySortMapper.updateByPrimaryKey(technologySort);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getSortById(Integer id) {
        TechnologySort technologySort = technologySortMapper.selectByPrimaryKey(id);
        return ResponseResult.success(technologySort);
    }

    @Autowired
    private IndustrySystemMapper industrySystemMapper;

    public ResponseResult getSystemList(Integer currPage, Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        List<IndustrySystem> list = industrySystemMapper.selectAll(map);
        return ResponseResult.success(list);
    }

    public ResponseResult getSystemById(Integer id) {
        IndustrySystem system = industrySystemMapper.selectByPrimaryKey(id);
        return ResponseResult.success(system);
    }

    public Integer removeSys(Integer id) {
        int i = industrySystemMapper.deleteByPrimaryKey(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateSys(Integer id, String name, String icon) {
        IndustrySystem system = new IndustrySystem();
        system.setIcon(icon);
        system.setSystemName(name);
        system.setId(id);
        int i = industrySystemMapper.updateByPrimaryKey(system);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer addSys(String name, String icon) {
        IndustrySystem system = new IndustrySystem();
        system.setSystemName(name);
        system.setIcon(icon);
        int insert = industrySystemMapper.insert(system);
        if (insert == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    @Autowired
    private ExpertGradeMapper expertGradeMapper;

    public ResponseResult getIndustryExpertList(String gradeName, Integer currPage,
                                                Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        map.put("gradeName", gradeName);
        List<ExpertGrade> list = expertGradeMapper.getIndustryExpertList(map);
        return ResponseResult.success(list);
    }

    public Integer delSysExpert(Integer id) {
        int i = expertGradeMapper.deleteByPrimaryKey(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    @Autowired
    private ImgMapper imgMapper;
    @Autowired
    private ExpertQuestionMapper expertQuestionMapper;

    public ResponseResult addExpertQuestion(Integer userId, Integer expertId, String content,
                                            String[] imgs) {
        if (userId==null||expertId==null)
        {
            return ResponseResult.error(StatusConst.ERROR,MsgConst.ID_NULL);
        }
        ExpertQuestion expertQuestion = new ExpertQuestion();
        expertQuestion.setUserId(userId);
        expertQuestion.setExpertId(expertId);
        expertQuestion.setContent(content);
        expertQuestion.setCreateTime(new Timestamp(System.currentTimeMillis()));
        expertQuestionMapper.insertExpertQuestion(expertQuestion);
        if (imgs!=null)
        {
            for (String image : imgs) {
                Img img = new Img();
                img.setExpertQuestionId(expertQuestion.getId());
                img.setImgUrl(image);
                imgMapper.addExpertQuestionImgs(img);
            }
        }
        return ResponseResult.success();
    }
    public ResponseResult getExpertDetail(Integer id)
    {
        Expert expert = expertMapper.getExpertDetail(id);
        expert.setNumber(expertMapper.getNumber(id));
        List<ExpertQuestion> expertQuestions = expertMapper.getExpertQuestionList(id);
        ExpertDTO expertDTO = new ExpertDTO();
        expertDTO.setExpert(expert);
        expertDTO.setExpertQuestions(expertQuestions);
        return ResponseResult.success(expertDTO);
    }

    public ResponseResult getQuestionList(Integer id,Integer currPage,Integer pageSize)
    {
        List<ExpertQuestion> questions = expertMapper.getExpertQuestionList(id);
        PageDTO pageDTO = PageUtil.pageListDemo(currPage, pageSize, questions);
        List<ExpertQuestion> dtoList = pageDTO.getList();
        for (ExpertQuestion question:dtoList)
        {
            if (question.getCreateTime()!=null)
            question.setTime(StringUtil.getDateString(question.getCreateTime()));

        }
        return ResponseResult.success(dtoList);
    }
}
