package cn.niit.group5.controller;

import cn.niit.group5.entity.*;
import cn.niit.group5.mapper.*;
import cn.niit.group5.serviceImp.CollectionServiceImp;
import cn.niit.group5.serviceImp.NewsServiceImp;
import cn.niit.group5.serviceImp.VideoServiceImp;
import cn.niit.group5.util.Client;
import cn.niit.group5.util.PageUtil;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StringUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/news")
@Api(tags = "5.资讯模块")
@Client
public class NewsController {

    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private TechnologySortMapper technologySortMapper;
    @Autowired
    private VideoMapper videoMapper;
    @Autowired
    private CollectionMapper collectionMapper;
    @Autowired
    private CommodityMapper commodityMapper;

    @ApiOperation(value = "港城要闻/动态等资讯调用此接口", notes = "要传入此模块的id或者客户端定义一个id值")
    @GetMapping(value = "getNewsListById")
    public ResponseResult getNewsListById(Integer id) {
        List<News> news = newsMapper.selectAllBySortId(id);
        for (News one : news) {
            Date createTime = one.getCreateTime();
            if (createTime != null)
                one.setTime(StringUtil.getDateString(createTime));
        }
        return ResponseResult.success(news);
    }

    @ApiOperation(value = "农业科技", notes = "农业科技页面发起此请求,参数是用来后台分页的，有默认值，客户端不会的可以不带参数，可直接通过路径请求得到数据")
    @GetMapping(value = "farmingTechnologySort")
    public ResponseResult farmingTechnologySort(@RequestParam(defaultValue = "1") Integer currPage,
                                                @RequestParam(defaultValue = "10") Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        List<TechnologySort> technologySortList = technologySortMapper.selectAll(map);
        return ResponseResult.success(technologySortList);
    }

    @ApiOperation(value = "农业科技中根据分类查询资讯", notes = "要传入该分类的id")
    @GetMapping(value = "getNewsBySortId")
    public ResponseResult getNewsBySortId(Integer id) {
        List<News> news = technologySortMapper.getNewsBySortId(id);
        for (News one : news) {
            Date createTime = one.getCreateTime();
            if (createTime != null)
                one.setTime(StringUtil.getDateString(createTime));
        }
        return ResponseResult.success(news);
    }

    @ApiOperation(value = "所有视频")
    @GetMapping(value = "/selectVideo")
    public ResponseResult selectVideo(Integer userId, Integer currPage, Integer pageSize) {
        return newsServiceImp.getVideoList(userId, currPage, pageSize);
    }

    @Autowired
    private AnimalMapper animalMapper;

    @ApiOperation(value = "知识库的畜禽品种库")
    @GetMapping(value = "getAnimalKindList")
    public ResponseResult getAnimalKindList() {
        List<Animal> animals = animalMapper.selectAllAnimal();
        return ResponseResult.success(animals);
    }

    @ApiOperation(value = "知识库中的畜禽品种库中根据畜禽查看相关资讯文章", notes = "需要传入畜禽种类的id")
    @GetMapping(value = "getNewsListByAnimalId")
    public ResponseResult getNewsListByAnimalId(int id) {
        List<News> news = animalMapper.AnimalNews(id);
        for (News one : news) {
            Date createTime = one.getCreateTime();
            if (createTime != null)
                one.setTime(StringUtil.getDateString(createTime));
        }
        return ResponseResult.success(news);
    }

    @Autowired
    private CollectionServiceImp collectionServiceImp;

    @ApiOperation(value = "收藏/取消收藏资讯", notes = "传入用户id和该资讯文章的id")
    @GetMapping(value = "collectNews")
    public ResponseResult collectNews(@RequestParam(required = true) Integer userId,
                                      @RequestParam(required = true) Integer newsId) {
        String column = "news_id";
        return collectionServiceImp.collectOrNo(userId, column, newsId);
    }

    @ApiOperation(value = "收藏/取消收藏视频")
    @GetMapping(value = "collectVideo")
    public ResponseResult collectVideo(@RequestParam(required = true) Integer userId,
                                       @RequestParam(required = true) Integer videoId) {
        String column = "video";
        return collectionServiceImp.collectOrNo(userId, column, videoId);
    }

    @Autowired
    private VideoServiceImp videoServiceImp;

    @ApiOperation(value = "视频详情")
    @GetMapping(value = "videoDetail")
    public ResponseResult videoDetail(Integer userId, Integer id) {
        return videoServiceImp.getVideoDetail(userId, id);
    }

    @ApiOperation(value = "品牌农资中通过分类sort_id遍历出相应资讯")
    @GetMapping(value = "getCommdityBysortId")
    public ResponseResult getCommdityBysortId(
            Integer sortId
    ) {
        Commodity commodity = new Commodity();
        List<Commodity> commodityList = commodityMapper.getCommdityBysortId(sortId);
        List<EnterpriseRecommend> enterpriseRecommendList =
                enterpriseRecommendMapper.getEnterpriseRecommendBySort(sortId);
        commodity.setCommodities(commodityList);
        commodity.setEnterpriseRecommends(enterpriseRecommendList);
        return ResponseResult.success(commodity);
    }

    @Autowired
    private EnterpriseRecommendMapper enterpriseRecommendMapper;

    @ApiOperation(value = "通过品牌农资分类sort遍历出企业推荐", notes = "传入品牌农资分类sort_id的值")
    @GetMapping(value = "getEnterpriseRecommendBySort")
    public ResponseResult getEnterpriseRecommendBySort(
            Integer sort) {
        List<EnterpriseRecommend> enterpriseRecommendList =
                enterpriseRecommendMapper.getEnterpriseRecommendBySort(sort);
        return ResponseResult.success(enterpriseRecommendList);
    }

    @ApiOperation(value = "通过企业id获取企业详情", notes = "传入企业的id")
    @GetMapping(value = "getEnterpriseRecommendById")
    public ResponseResult getEnterpriseRecommendById(
            Integer id) {
        EnterpriseRecommend enterpriseRecommend =
                enterpriseRecommendMapper.getEnterpriseRecommendById(id);
        enterpriseRecommend.setId(id);
        return ResponseResult.success(enterpriseRecommend);
    }

    @Autowired
    private TopicMapper topicMapper;

    @ApiOperation(value = "专题列表", notes = "无需任何参数")
    @GetMapping(value = "getTopicList")
    public ResponseResult getTopicList() {
        List<Topic> topicList = topicMapper.getTopicList();
        return ResponseResult.success(topicList);
    }

    @ApiOperation(value = "每个专题里的资讯列表", notes = "客户端传入该专题的id")
    @GetMapping(value = "getTopicNews")
    public ResponseResult getTopicNews(Integer id) {
        List<News> topicNewsList = topicMapper.getNewsByTopicId(id);
        for (News one : topicNewsList) {
            Date createTime = one.getCreateTime();
            if (createTime != null)
                one.setTime(StringUtil.getDateString(createTime));
        }
        return ResponseResult.success(topicNewsList);
    }

    @Autowired
    private NewsServiceImp newsServiceImp;

    @ApiOperation(value = "资讯详情", notes = "传入该资讯的id和用户的id,用户id是用来判断该资讯是否已经收藏")
    @GetMapping(value = "getNewsDetail")
    public ResponseResult getNewsDetail(Integer newsId, Integer userId) {
        return newsServiceImp.getNewsById(newsId, userId);
    }

}
