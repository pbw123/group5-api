package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Module;
import cn.niit.group5.entity.News;
import cn.niit.group5.entity.TechnologySort;
import cn.niit.group5.mapper.ModuleMapper;
import cn.niit.group5.mapper.NewsMapper;
import cn.niit.group5.mapper.TechnologySortMapper;
import cn.niit.group5.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewsServiceImp {

    @Autowired
    private TechnologySortMapper technologySortMapper;

    public ResponseResult addTechnoSort(String name, MultipartFile icon) {
        String file;
        if (icon != null) {
            file = UploadImg.ossUpload(icon);
        } else
            file = "1.png";
        int index = technologySortMapper.addSortTechno(name, file);
        if (index == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    @Autowired
    private NewsMapper newsMapper;

    public ResponseResult getNewsByReview(Integer reviewStatus, Integer currPage,
                                          Integer pageSize) {
        News news = new News();
        news.setReviewStatus(reviewStatus);
        news.setCurrPage(currPage);
        news.setPageSize(pageSize);
        List<News> newsList = newsMapper.getNewsByReview(news);
        return ResponseResult.success(newsList);
    }

    @Autowired
    private ModuleMapper moduleMapper;

    public ResponseResult getAllModule(Integer currPage, Integer pageSize) {
        List<Module> allModuleList = moduleMapper.getAllModuleList(currPage, pageSize);
        return ResponseResult.success(allModuleList);
    }

    public ResponseResult addModule(String name, MultipartFile icon) {
        Module module = new Module();
        module.setName(name);
        String file = "1.png";
        if (icon != null) {
            file = UploadImg.ossUpload(icon);
        }
        module.setIcon(file);
        int i = moduleMapper.addModule(module);

        if (i == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult delReplyQuestion(Integer id) {
        int i = newsMapper.delReplyQuestion(id);
        if (i == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public Integer delTechnoSort(Integer id) {
        int i = newsMapper.delTechnoSort(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateTechnoSort(Integer id, String name, MultipartFile icon) {
        TechnologySort technologySort = new TechnologySort();
        technologySort.setName(name);
        technologySort.setId(id);
        if (icon != null) {
            String file = UploadImg.ossUpload(icon);
            technologySort.setIcon(file);
        }
        int i = newsMapper.updateTechnoSort(technologySort);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateModule(Integer id, String name, MultipartFile file) {
        Module module = new Module();
        module.setId(id);
        module.setName(name);
        if (file != null) {
            String s = UploadImg.ossUpload(file);
            module.setIcon(s);
        }
        return moduleMapper.updateModule(module);
    }


    public ResponseResult getAllNewsOrSearch(String title, Integer reviewStatus,
                                             @RequestParam(defaultValue = "1") Integer currPage,
                                             @RequestParam(defaultValue = "10") Integer pageSize) {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        map.put("title", title);
        map.put("reviewStatus", reviewStatus);
        List<News> newsList = newsMapper.selectAll(map);
        return ResponseResult.success(newsList);
    }

    public Integer delNews(Integer id) {
        int i = newsMapper.deleteByPrimaryKey(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getNewsById(Integer id) {
        News news = newsMapper.selectByPrimaryKey(id);
        return ResponseResult.success(news);
    }

    public int updateStatus(Integer id, Integer status) {
        HashMap<Object, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("id", id);
        int i = newsMapper.updateStatus(map);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public int updateNews(Integer id,String title,String content)
    {
        News news = new News();
        news.setTitle(title);
        news.setContent(content);
        int i = newsMapper.updateByPrimaryKey(news);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public int addNews(String title,String content,String author,String source,Integer isTop)
    {
        News news = new News();
        news.setContent(content);
        news.setTitle(title);
        news.setAuthor(author);
        news.setSource(source);
        news.setIsTop(isTop);
        int insert = newsMapper.insert(news);
        if (insert==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }
}
