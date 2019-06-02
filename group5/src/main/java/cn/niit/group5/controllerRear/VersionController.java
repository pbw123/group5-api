package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.VersionServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Manager
@Api(tags = "9.版本管理")
@RequestMapping(value = "/version")
public class VersionController {
    @Autowired
    private VersionServiceImp versionServiceImp;

    @ApiOperation(value = "版本列表")
    @GetMapping(value = "getAllVersion")
    public ResponseResult getAllVersion() {
        return versionServiceImp.getAllVersion();
    }

    @ApiOperation(value = "获取该版本")
    @GetMapping(value = "getVersionById/{id}")
    public ResponseResult getVersionById(@PathVariable Integer id)
    {
        ResponseResult version = versionServiceImp.getVersionById(id);
        return ResponseResult.success(version);

    }

    @ApiOperation(value = "修改版本")
    @PostMapping(value = "updateVersion")
    public Integer updateVersion(Integer id,String type,String current,String max,String min,
                                 String address,String description)
    {
        return versionServiceImp.updateVersion(id, type, current, max, min, address,
                description);
    }


}
