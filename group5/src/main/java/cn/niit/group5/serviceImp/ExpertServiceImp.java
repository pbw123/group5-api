package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Expert;
import cn.niit.group5.entity.Grade;
import cn.niit.group5.mapper.ExpertMapper;
import cn.niit.group5.mapper.GradeMapper;
import cn.niit.group5.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        List<Expert> experts = expertMapper.selectAll(map);
        return ResponseResult.success(experts);
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
}
