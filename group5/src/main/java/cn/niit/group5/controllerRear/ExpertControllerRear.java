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
}
