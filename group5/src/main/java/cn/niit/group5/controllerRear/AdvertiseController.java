package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.AdvertiseServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping(value = "/advertise")
@Manager
@Api(tags = "4.广告管理")
public class AdvertiseController {
    @Autowired
    private AdvertiseServiceImp advertiseServiceImp;
    @ApiOperation(value = "首页的所有广告")
    @GetMapping(value = "getAllAdvertiseIndex")
    public ResponseResult getAllAdvertiseIndex(Integer currPage,Integer pageSize)
    {
        return advertiseServiceImp.getAllAdvertise(0,currPage,pageSize);
    }
    @ApiOperation(value = "开机的所有广告")
    @GetMapping(value = "getAllAdvertiseOpen")
    public ResponseResult getAllAdvertiseOpen(Integer currPage,Integer pageSize)
    {
        return advertiseServiceImp.getAllAdvertise(1,currPage,pageSize);
    }

    @ApiOperation(value = "添加首页的轮播广告")
    @PostMapping(value = "addAdvertiseIndex")
    public Integer addAdvertiseIndex(String content, MultipartFile file)
    {
      return advertiseServiceImp.addAdvertiseIndex(content,file);
    }
    @ApiOperation(value = "添加开机的广告")
    @PostMapping(value = "addAdvertiseOpen")
    public Integer addAdvertiseOpen(String title, MultipartFile file,String type,String endTime)
    {
      return advertiseServiceImp.addAdvertiseOpen(title,file,type,endTime);
    }

    @ApiOperation(value = "修改广告")
    @PostMapping(value = "updateAdvertise")
    public Integer updateAdvertise(String name,String content,MultipartFile file,
                                        Integer status,Integer id)
    {
       return advertiseServiceImp.updateAdvertise(name,content,file,status,id);
    }

    @ApiOperation(value = "按分类搜索首页广告")
    @PostMapping(value = "searchByType")
    public ResponseResult searchByType(String type,Integer currPage,Integer pageSize)
    {

        return ResponseResult.success(advertiseServiceImp.searchAdvertise(type,currPage,pageSize));
    }
    @ApiOperation(value = "按名称搜索开机广告")
    @PostMapping(value = "searchByName")
    public ResponseResult searchByName(String title,Integer currPage,Integer pageSize)
    {
        return ResponseResult.success(advertiseServiceImp.searchAdvertiseOpen(title,currPage,pageSize));
    }

}
