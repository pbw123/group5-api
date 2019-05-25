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
@RequestMapping(value = "/api/news")
@Api(tags = "资讯模块")
public class NewsController {

    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private TechnologySortMapper  technologySortMapper;
    @Autowired
    private VideoMapper videoMapper;
    @Autowired
    private CollectionMapper collectionMapper;
    @Autowired
    private CommodityMapper commodityMapper;

    @ApiOperation(value = "港城要闻",notes = "港城要闻的资讯")
    @GetMapping(value = "yaowen")
    public List<News> yaoWenNews()
    {
        return newsMapper.selectAllBySortId(1);
    }

    @ApiOperation(value = "基层风采/职业农民",notes = "点击基层风采和职业农民都是这个请求")
    @GetMapping(value = "basicNews")
    public List<News> basicNews()
    {
        return newsMapper.selectAllBySortId(2);
    }

    @ApiOperation(value = "基层风采中的示范基地",notes = "点击基层风采中的示范基地发起这个请求")
    @GetMapping(value = "demonstrateNews")
    public List<News> demonstrateNews()
    {
        return newsMapper.selectAllBySortId(3);
    }

    @ApiOperation(value = "基层风采中的农技人员",notes = "点击基层风采中的农技人员发起这个请求")
    @GetMapping(value = "personnelNews")
    public List<News> personnelNews() {
        return newsMapper.selectAllBySortId(4);
    }

    @ApiOperation(value = "农业科技",notes = "点击农业科技发起这个请求")
    @GetMapping(value = "farmingTechnologySort")
    public List<TechnologySort> farmingTechnologySort()
    {
        return technologySortMapper.selectAll();
    }


    @ApiOperation(value = "农业科技中根据分类查询资讯",notes = "要传入该分类的id")
    @GetMapping(value = "getNewsBySortId/{id}")
    public ResponseResult getNewsBySortId(@PathVariable("id") Integer id)
    {
            List<News> news = technologySortMapper.getNewsBySortId(id);
            return ResponseResult.success(news);
    }

    @ApiOperation(value ="视频" )
    @GetMapping(value = "/selectVideo")
    public ResponseResult selectVideo(){
    List<Video> list=videoMapper.selectVideo();
    return ResponseResult.success(list);
    }

    @Autowired
    private AnimalMapper animalMapper;

    @ApiOperation(value = "知识库的畜禽品种库")
    @GetMapping(value = "getAnimalKindList")
    public List<Animal>getAnimalKindList()
        {
            return animalMapper.selectAllAnimal();
        }

        @ApiOperation(value = "知识库中的畜禽品种库中根据畜禽查看相关资讯文章",notes = "需要传入畜禽种类的id")
        @GetMapping(value = "getNewsListByAnimalId/{id}")
    public List<News>getNewsListByAnimalId(@PathVariable int id)
        {
            return animalMapper.AnimalNews(id);
        }

    @ApiOperation(value = "收藏资讯")
    @PostMapping(value = "collectNews")
    public ResponseResult collectNews(
            @RequestParam(required = true) Integer userId,
            @RequestParam(required = true) Integer newsId
    ){
        Collection collection=new Collection();
        collection.setUserId(userId);
        collection.setNewsId(newsId);
        collectionMapper.collectNews(collection);
        return ResponseResult.success();
    }

    @ApiOperation(value = "收藏视频")
    @PostMapping(value = "collectVideo")
    public ResponseResult collectVideo(
            @RequestParam(required = true) Integer userId,
            @RequestParam(required = true) Integer video
    ){
        Collection collection=new Collection();
        collection.setUserId(userId);
        collection.setVideo(video);
        collectionMapper.collectVideo(collection);
        return ResponseResult.success();
    }

    @ApiOperation(value = "品牌农资中通过分类sort_id遍历出相应资讯")
    @GetMapping(value = "getCommdityBysortId/{sortId}")
    public ResponseResult getCommdityBysortId(
            @PathVariable Integer sortId
    ){
        List<Commodity> commodityList=commodityMapper.getCommdityBysortId(sortId);
        return ResponseResult.success(commodityList);
    }
}
