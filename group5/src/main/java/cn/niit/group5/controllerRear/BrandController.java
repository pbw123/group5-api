package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.BrandServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@Manager
@Api(tags = "5.品牌农资管理")
@RequestMapping(value = "/brand")
public class BrandController {
    @Autowired
    private BrandServiceImp brandServiceImp;

    @ApiOperation(value = "品牌农资分类列表")
    @GetMapping(value = "getAllBrandList/{currPage}/{pageSize}")
    public ResponseResult getAllBrandList(@PathVariable Integer currPage,
                                          @PathVariable Integer pageSize) {
        return brandServiceImp.getAllBrand(currPage, pageSize);
    }

    @ApiOperation(value = "据分类名称搜索")
    @PostMapping(value = "getBrandByName")
    public ResponseResult getBrandByName(String name, Integer currPage, Integer pageSize) {
        return brandServiceImp.getBrandByName(name, currPage, pageSize);
    }

    @ApiOperation(value = "删除品牌农资分类")
    @GetMapping(value = "removeBrandSortById/{id}")
    public Integer removeBrandSortById(@PathVariable Integer id) {
        return brandServiceImp.delBrandSort(id);
    }

    @ApiOperation(value = "修改农资分类")
    @PostMapping(value = "changeBrandById")
    public Integer changeBrandById(Integer id, String name, String type) {
        return brandServiceImp.updateBrand(id, name, type);
    }

    @ApiOperation(value = "添加农资分类")
    @PostMapping(value = "addBrandSort")
    public Integer addBrandSort(String name, String type) {
        return brandServiceImp.addBrand(name, type);
    }

    @ApiOperation(value = "农资企业列表")
    @GetMapping(value = "getEnterpriseList")
    public ResponseResult getEnterpriseList(Integer currPage, Integer pageSize) {
        return brandServiceImp.getAllEnterprise(currPage, pageSize);
    }

    @ApiOperation(value = "按品牌分类搜索企业")
    @PostMapping(value = "getEnterpriseBySort")
    public ResponseResult getEnterpriseBySort(Integer sort, Integer currPage, Integer pageSize) {
        return brandServiceImp.searchEnterpriseBySort(sort, currPage, pageSize);
    }

    @ApiOperation(value = "删除企业")
    @GetMapping(value = "delEnterprise/{id}")
    public Integer delEnterprise(@PathVariable Integer id) {
        return brandServiceImp.delBrandSort(id);
    }

    @ApiOperation(value = "修改企业")
    @PostMapping(value = "updateEnterprise")
    public Integer updateEnterprise(Integer sort, String name, Integer count, String phoneNumber,
                                    String profile, MultipartFile file) {
        return brandServiceImp.updateEnterprise(sort, name, count, phoneNumber, profile, file);
    }

    @ApiOperation(value = "据企业名称，手机号搜索")
    @PostMapping(value = "searchEnterpriseByName")
    public ResponseResult searchEnterpriseByName(String name, String phoneNumber,
                                                 @RequestParam(defaultValue = "1") Integer currPage,
                                                 @RequestParam(defaultValue = "10") Integer pageSize) {
        return brandServiceImp.searchEnterpriseByName(name, phoneNumber, currPage, pageSize);
    }

    @ApiOperation(value = "添加企业")
    @PostMapping(value = "addEnterprise")
    public Integer addEnterprise(MultipartFile file, String name, String phoneNumber, Integer type,
                                 String profile) {
        return brandServiceImp.addEnterprise(file, name, phoneNumber, type, profile);
    }

    @ApiOperation(value = "添加农资")
    @GetMapping(value = "getAllCommodity/{currPage}/{pageSize}")
    public ResponseResult getAllCommodity(@PathVariable Integer currPage,
                                          @PathVariable Integer pageSize) {
        return brandServiceImp.getAllCommodity(currPage, pageSize);
    }

    @ApiOperation(value = "删除农资")
    @GetMapping(value = "delCommodityById/{id}")
    public Integer delCommodityById(@PathVariable Integer id) {
        return brandServiceImp.delCommodity(id);
    }

    @ApiOperation(value = "修改农资")
    @PostMapping(value = "updateCommodity")
    public Integer updateCommodity(Integer id, String title, Integer sort, String source,
                                   String phoneNumber,
                                   Integer readNumber) {
        return brandServiceImp.changeCommodity(id, title, sort, source, phoneNumber, readNumber);
    }

    @ApiOperation(value = "添加农资")
    @PostMapping(value = "addCommodity")
    public Integer addCommodity(String title, Integer sort, String source,
                                String phoneNumber,
                                Integer readNumber) {
        return brandServiceImp.insertCommodity(title, sort, source, phoneNumber, readNumber);
    }

    @ApiOperation(value = "搜索农资")
    @PostMapping(value = "searchCommodity")
    public ResponseResult searchCommodity(String keyword,
                                          @RequestParam(defaultValue = "1") Integer currPage,
                                          @RequestParam(defaultValue = "10") Integer pageSize) {
        return brandServiceImp.searchCommodity(keyword, currPage, pageSize);
    }
}
