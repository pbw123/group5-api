package cn.niit.group5.controller;

import cn.niit.group5.entity.*;
import cn.niit.group5.mapper.*;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/index")
@Api(tags = "首页模块")
public class IndexController {
    @Autowired
    private FarmerApplyMapper farmerApplyMapper;
    @Autowired
    private ModuleMapper moduleMapper;
    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private VideoMapper videoMapper;


//    @ApiOperation(value = "首页九宫格",notes = "选择的地区不同，看的的九宫格就不一样，所以要传入地区的id,默认江苏")
//    @GetMapping(value = "selectModule/{id}")
//    public List<Module> selectModule(@PathVariable Integer id){
//        return  moduleMapper.getIndexModule(id);
//    }

    @ApiOperation(value = "点击九宫格都需要调用的接口",notes = "传入该模块功能的id")
    @GetMapping(value = "getModuleDetails/{id}")
    public ResponseResult getModuleDetails(@PathVariable Integer id)
    {
        Module module = moduleMapper.getModuleById(id);
        return new ResponseResult(id,module.getName()+"页面");
    }


    @ApiOperation(value ="云上智农添加申报信息")
    @PostMapping(value = "/insertApplyMessage")
    public ResponseResult insertApplyMessage(
            String userName, String sex,String identityNumber, String phoneNumber,String education,
            String job,String jobAddress,String jobSize,Integer ageLimit, String sizeUnit,String userSort,Integer state
    ){
      FarmerApply farmerApply=new FarmerApply();
      farmerApply.setUserName(userName);
      farmerApply.setSex(sex);
      farmerApply.setIdentityNumber(identityNumber);
      farmerApply.setPhoneNumber(phoneNumber);
      farmerApply.setEducation(education);
      farmerApply.setJob(job);
      farmerApply.setJobAddress(jobAddress);
      farmerApply.setJobSize(jobSize);
      farmerApply.setAgeLimit(ageLimit);
      farmerApply.setSizeUnit(sizeUnit);
      farmerApply.setUserSort(userSort);
      farmerApply.setState(state);
      farmerApplyMapper.insertApplyMessage(farmerApply);
      return ResponseResult.success();
    }
    @ApiOperation(value ="首页信息")
    @GetMapping(value = "/getIndexMessage/{id}")
    public ResponseResult getIndexMessage(@PathVariable Integer id){
        Index index=new Index();
        List<Module> moduleList=moduleMapper.getIndexModule(id);
        Address address=new Address();
        address.setId(id);
        List<News> newsList=moduleMapper.getTopNews(address);
        List<News> newsList1=moduleMapper.getIndexDynamic(address);
        Question question=moduleMapper.getIndexHotQuestion(address);
        Exchange exchange=moduleMapper.getIndexHotExchange(address);
        List<Video> videoList=videoMapper.selectVideo();
        index.setId(id);
        index.setModules(moduleList);
        index.setVideos(videoList);
        index.setTopNews(newsList);
        index.setIndexDynamic(newsList1);
        index.setIndexHotQuestion(question);
        index.setIndexHotExchange(exchange);
    return ResponseResult.success(index);

    }
    @ApiOperation(value = "首页动态资讯",notes = "因地区不同，展现的动态资讯就不一样，传入该地区的id")
     @GetMapping(value = "getIndexDynamic/{id}")
    public ResponseResult getIndexDynamic(@PathVariable(value = "id") Integer id)
     {
         Address address=new Address();
         address.setId(id);
         List<News> indexModule = moduleMapper.getIndexDynamic(address);
         return ResponseResult.success(indexModule);
     }
    @ApiOperation(value = "首页头条",notes = "因地区不同，展现的头条就不一样，传入该地区的id,根据资讯发布时间和阅读量降序排列")
     @GetMapping(value = "getIndexTopNews/{id}")
    public ResponseResult getIndexTopNews(@PathVariable(value = "id") Integer id)
     {
         Address address=new Address();
         address.setId(id);
         List<News> indexModule = moduleMapper.getTopNews(address);
         return ResponseResult.success(indexModule);
     }

//     左上角选择地区
    @Autowired
   private AddressMapper addressMapper;
    @ApiOperation(value = "首页左上角地区列表",notes = "下拉列表的数据由接口返回，客户端遍历出来，而非客户端写死")
    @GetMapping(value = "getAddressList")
    public ResponseResult getAddressList()
    {
        List<Address> addressList = addressMapper.getAddressList();
        return ResponseResult.success(addressList);
    }

}
