package cn.niit.group5.controller;

import cn.niit.group5.entity.News;
import cn.niit.group5.entity.TechnologySort;
import cn.niit.group5.mapper.NewsMapper;
import cn.niit.group5.mapper.TechnologySortMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/news")
@Api(tags = "资讯模块")
public class NewsController {

    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private TechnologySortMapper  technologySortMapper;

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
    public List<News> personnelNews()
    {
        return newsMapper.selectAllBySortId(4);
    }
    @ApiOperation(value = "农业科技",notes = "点击农业科技发起这个请求")
    @GetMapping(value = "farmingTechnologySort")
    public List<TechnologySort> farmingTechnologySort()
    {
        return technologySortMapper.selectAll();
    }
}
