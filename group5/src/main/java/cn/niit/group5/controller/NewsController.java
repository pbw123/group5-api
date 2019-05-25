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
