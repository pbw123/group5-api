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

    @ApiOperation(value = "港城要闻/动态等资讯调用此接口",notes = "要传入此模块的id或者客户端定义一个id值")
    @GetMapping(value = "getNewsListById/{id}")
    public List<News> getNewsListById(@PathVariable Integer id)
    {
        return newsMapper.selectAllBySortId(id);
    }


    @ApiOperation(value = "农业科技",notes = "农业科技页面发起此请求")
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
    public ResponseResult collectNews(@RequestParam(required = true) Integer userId,
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
    public ResponseResult collectVideo(@RequestParam(required = true) Integer userId,
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
        Commodity commodity=new Commodity();
        List<Commodity> commodityList=commodityMapper.getCommdityBysortId(sortId);
        List<EnterpriseRecommend> enterpriseRecommendList=enterpriseRecommendMapper.getEnterpriseRecommendBySort(sortId);
        commodity.setCommodities(commodityList);
        commodity.setEnterpriseRecommends(enterpriseRecommendList);
        return ResponseResult.success(commodity);
    }

    @Autowired
    private EnterpriseRecommendMapper enterpriseRecommendMapper;
    @ApiOperation(value = "通过品牌农资分类sort遍历出企业推荐",notes="传入品牌农资分类sort_id的值")
    @GetMapping(value = "getEnterpriseRecommendBySort/{sort}")
    public ResponseResult getEnterpriseRecommendBySort(
            @PathVariable Integer sort
    ){
        List<EnterpriseRecommend> enterpriseRecommendList=enterpriseRecommendMapper.getEnterpriseRecommendBySort(sort);
        return  ResponseResult.success(enterpriseRecommendList);
    }

    @ApiOperation(value = "通过企业id获取企业详情",notes="传入企业的id")
    @GetMapping(value = "getEnterpriseRecommendById/{id}")
    public ResponseResult getEnterpriseRecommendById(
            @PathVariable Integer id
    ){
        EnterpriseRecommend enterpriseRecommend=enterpriseRecommendMapper.getEnterpriseRecommendById(id);
        enterpriseRecommend.setId(id);
        return ResponseResult.success(enterpriseRecommend);
    }

    @Autowired
    private TopicMapper topicMapper;
    @ApiOperation(value = "专题列表",notes ="无需任何参数" )
    @GetMapping(value = "getTopicList")
    public ResponseResult getTopicList()
    {
        List<Topic> topicList = topicMapper.getTopicList();
        return  ResponseResult.success(topicList);
    }
  @ApiOperation(value = "每个专题里的资讯列表",notes ="客户端传入该专题的id" )
  @GetMapping(value = "getTopicNews/{id}")
    public ResponseResult getTopicNews(@PathVariable Integer id)
    {
        List<News> topicNewsList = topicMapper.getNewsByTopicId(id);
        return  ResponseResult.success(topicNewsList);
    }




}
