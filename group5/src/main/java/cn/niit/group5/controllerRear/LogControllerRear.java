package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.LogserviceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Manager
@Api(tags = "7.农技员日志管理")
@RequestMapping(value = "/log")
public class LogControllerRear {
    @Autowired
    private LogserviceImp logserviceImp;

    @ApiOperation(value = "农技员列表")
    @GetMapping(value = "getLogUserList")
    public ResponseResult getLogUserList(String userName,
                                         @RequestParam(defaultValue = "1") Integer currPage,
                                         @RequestParam(defaultValue = "10") Integer pageSize) {
        String identity = "农技推广人员";
        return logserviceImp.getLogUserList(identity, userName, currPage, pageSize);
    }

    @ApiOperation(value = "日志类型列表")
    @GetMapping(value = "getAllTypeList")
    public ResponseResult getAllTypeList(@RequestParam(defaultValue = "1") Integer currPage,
                                         @RequestParam(defaultValue = "10") Integer pageSize) {
        return logserviceImp.getAllTypes(currPage, pageSize);
    }

    @ApiOperation(value = "修改日志类型")
    @GetMapping(value = "updateType/{name}")
    public Integer updateType(@PathVariable String name) {
        return logserviceImp.changeType(name);
    }

    @ApiOperation(value = "查当前日志类型")
    @GetMapping(value = "getTypeById/{id}")
    public ResponseResult getTypeById(@PathVariable Integer id) {
        return logserviceImp.getTypeById(id);
    }

    @ApiOperation(value = "删除日志类型")
    @GetMapping(value = "delType/{id}")
    public Integer delType(@PathVariable Integer id) {
        return logserviceImp.removeType(id);
    }

    @ApiOperation(value = "添加日志")
    @GetMapping(value = "addType/{name}")
    public Integer addType(@PathVariable String name) {
        return logserviceImp.addType(name);
    }

    @ApiOperation(value = "推广日志列表")
    @GetMapping(value = "getLogList")
    public ResponseResult getLogList(@RequestParam(defaultValue = "1") Integer currPage,
                                     @RequestParam(defaultValue = "10") Integer pageSize) {
        return logserviceImp.getAllLog(currPage, pageSize);
    }

    @ApiOperation(value = "查看日志详情")
    @GetMapping(value = "getLogById/{id}")
    public ResponseResult getLogById(@PathVariable Integer id) {
        return logserviceImp.getLogById(id);
    }

    @ApiOperation(value = "查询推广日志")
    @PostMapping(value = "searchLogs")
    public ResponseResult searchLogs(String keyword, String type,
                                     @RequestParam(defaultValue = "1") Integer currPage,
                                     @RequestParam(defaultValue = "10") Integer pageSize) {
        return logserviceImp.getLogUserList(keyword, type, currPage, pageSize);
    }
}
