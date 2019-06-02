package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.ExpertServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@Manager
@Api(tags = "10.专家管理")
@RequestMapping(value = "/expert")
public class ExpertControllerRear {
    @Autowired
    private ExpertServiceImp expertServiceImp;

    @ApiOperation(value = "所有专家列表")
    @GetMapping(value = "getAllExpert")
    public ResponseResult getAllExpert(@RequestParam(defaultValue = "1") Integer currPage,
                                       @RequestParam(defaultValue = "10") Integer pageSize) {
        return expertServiceImp.getAllExpert(currPage, pageSize);
    }

    @ApiOperation(value = "添加专家")
    @PostMapping(value = "addExpert")
    public Integer addExpert(String expertName, String unitName, String email,
                             String profession, String resume, Integer sysSort,
                             Integer expertSort, String jobTitle, Integer checkAll,
                             String phoneNumber, Integer score, MultipartFile file) {
        return expertServiceImp.addExpert(expertName, unitName, email, profession, resume,
                sysSort, expertSort, jobTitle, checkAll, phoneNumber, score, file);
    }

    @ApiOperation(value = "修改专家")
    @PostMapping(value = "updateExpert")
    public Integer updateExpert(String name, String sort, String grade, String unitName,
                                String profession, String phoneName, Integer check, Integer score) {
        return expertServiceImp.changeExpert(name, sort, grade, unitName, profession, phoneName,
                check, score);
    }

    @ApiOperation(value = "改变专家状态")
    @GetMapping(value = "updateStatus")
    public ResponseResult updateStatus(@RequestParam(defaultValue = "0") Integer state,
                                       Integer id) {
        return expertServiceImp.changeStatus(state, id);
    }

    @ApiOperation(value = "搜索专家")
    @PostMapping(value = "search")
    public ResponseResult search(String keyword, String sortName, String grade,
                                 @RequestParam(defaultValue = "1") Integer currPage,
                                 @RequestParam(defaultValue = "10") Integer pageSize) {
        return expertServiceImp.searchExpertList(keyword, sortName, grade, currPage, pageSize);
    }

    @ApiOperation(value = "等级列表")
    @GetMapping(value = "getGradeList")
    public ResponseResult getGradeList(@RequestParam(defaultValue = "1") Integer currPage,
                                       @RequestParam(defaultValue = "10") Integer pageSize) {
        return expertServiceImp.getAllGradeList(currPage, pageSize);
    }

    @ApiOperation(value = "添加等级")
    @GetMapping(value = "addGrade/{name}/{sort}")
    public Integer addGrade(@PathVariable String name, @PathVariable String sort) {
        return expertServiceImp.addGrade(name, sort);
    }

    @ApiOperation(value = "删除等级")
    @GetMapping(value = "delGrade/{id}")
    public Integer delGrade(@PathVariable Integer id) {
        return expertServiceImp.removeGrade(id);
    }

    @ApiOperation(value = "查该等级")
    @GetMapping(value = "getGradeById/{id}")
    public ResponseResult getGradeById(@PathVariable Integer id) {
        return expertServiceImp.getGradeById(id);
    }

    @ApiOperation(value = "修改等级")
    @PostMapping(value = "updateGrade")
    public Integer updateGrade(Integer id, String name, String sort) {
        return expertServiceImp.updateGrade(id, name, sort);
    }

    @ApiOperation(value = "搜索专家等级")
    @PostMapping(value = "searchGrade")
    public ResponseResult searchGrade(String keyword,
                                      @RequestParam(defaultValue = "1") Integer currPage,
                                      @RequestParam(defaultValue = "10") Integer pageSize) {
        return expertServiceImp.searchGrade(keyword, currPage, pageSize);
    }

    @ApiOperation(value = "据id查询专家分类")
    @GetMapping(value = "getSortById/{id}")
    public ResponseResult getSortById(@PathVariable Integer id) {
        ResponseResult sort = expertServiceImp.getSortById(id);
        return ResponseResult.success(sort);
    }

    @ApiOperation(value = "添加专家分类")
    @GetMapping(value = "addSort")
    public Integer addSort(String name, String sort) {
        return expertServiceImp.addSort(name, sort);
    }

    @ApiOperation(value = "删除专家分类")
    @GetMapping(value = "delSort/{id}")
    public Integer delSort(@PathVariable Integer id) {
        return expertServiceImp.removeSort(id);
    }

    @ApiOperation(value = "修改专家分类")
    @GetMapping(value = "updateSort")
    public Integer updateSort(Integer id, String name, String icon) {
        return expertServiceImp.updateById(id, name, icon);
    }

    @ApiOperation(value = "产业体系列表")
    @GetMapping(value = "getSysList")
    public ResponseResult getSysList(@RequestParam(defaultValue = "1") Integer currPage,
                                     @RequestParam(defaultValue = "10") Integer pageSize) {
        ResponseResult systemList = expertServiceImp.getSystemList(currPage, pageSize);
        return ResponseResult.success(systemList);
    }

    @ApiOperation(value = "添加一个产业体系")
    @GetMapping(value = "addSys")
    public Integer addSys(String name, String icon) {
        return expertServiceImp.addSys(name, icon);
    }

    @ApiOperation(value = "删除一个产业")
    @GetMapping(value = "delSys/{id}")
    public Integer delSys(@PathVariable Integer id) {
        return expertServiceImp.removeSys(id);
    }

    @ApiOperation(value = "查询一个体系")
    @GetMapping(value = "getSysById/{id}")
    public ResponseResult getSysById(@PathVariable Integer id) {
        return expertServiceImp.getSystemById(id);
    }

    @ApiOperation(value = "修改体系")
    @PostMapping(value = "updateSys")
    public Integer updateSys(Integer id, String name, String icon) {
        return expertServiceImp.updateSys(id, name, icon);
    }

    @ApiOperation(value = "技术体系专家列表")
    @GetMapping(value = "industryExpertList")
    public ResponseResult industryExpertList(Integer currPage, Integer pageSize, String gradeName) {
        return expertServiceImp.getIndustryExpertList(gradeName, currPage, pageSize);
    }

    @ApiOperation(value = "删除体系专家")
    @GetMapping(value = "delExpertById/{id}")
    public Integer delExpertById(@PathVariable Integer id) {
        return expertServiceImp.delSysExpert(id);
    }
}
