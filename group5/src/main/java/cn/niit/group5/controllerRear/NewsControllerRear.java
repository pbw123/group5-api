package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.ExpertServiceImp;
import cn.niit.group5.serviceImp.NewsServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@Manager
@Api(tags = "3.后台-资讯管理")
@RequestMapping(value = "/news")
public class NewsControllerRear {
    @Autowired
    private NewsServiceImp newsServiceImp;

    @ApiOperation(value = "添加农业科技分类")
    @PostMapping(value = "addTechnoSort")
    public ResponseResult addTechnoSort(String name, MultipartFile icon) {
        return newsServiceImp.addTechnoSort(name, icon);
    }

    @ApiOperation(value = "根据审核状态查询资讯")
    @GetMapping(value = "getNewsByReview")
    public ResponseResult getNewsByReview(Integer review, Integer currPage, Integer pageSize) {
        return newsServiceImp.getNewsByReview(review, currPage, pageSize);
    }

    @ApiOperation(value = "九宫格列表")
    @GetMapping(value = "getAllModule/{currPage}/{pageSize}")
    public ResponseResult getAllModule(@PathVariable Integer currPage,
                                       @PathVariable Integer pageSize) {
        return newsServiceImp.getAllModule(currPage, pageSize);
    }

    @ApiOperation(value = "添加九宫格")
    @PostMapping(value = "addNineModule")
    public ResponseResult addNineModule(String name, MultipartFile icon) {
        return newsServiceImp.addModule(name, icon);
    }

    @Autowired
    private ExpertServiceImp expertServiceImp;

    @ApiOperation(value = "删除专家问答")
    @GetMapping(value = "delExpertById/{id}")
    public ResponseResult delExpertById(@PathVariable Integer id) {
        return expertServiceImp.delExpertQeustion(id);
    }

    @ApiOperation(value = "更新专家问题内容")
    @PostMapping(value = "updateExpertQuestionById")
    public ResponseResult updateExpertQuestionById(String content, Integer id) {
        return expertServiceImp.updateExpertQuestion(content, id);
    }

    @ApiOperation(value = "删除问答评论")
    public ResponseResult delQuestionReplyById(Integer id) {
        return newsServiceImp.delReplyQuestion(id);
    }

    @ApiOperation(value = "删除农资分类列表")
    @GetMapping(value = "delTechnoSortById/{id}")
    public Integer delTechnoSortById(@PathVariable Integer id) {
        return newsServiceImp.delTechnoSort(id);
    }

    @ApiOperation(value = "修改农资分类")
    @PostMapping(value = "updateTechnology")
    public Integer updateTechnology(Integer id, String name, MultipartFile icon) {
        return newsServiceImp.updateTechnoSort(id, name, icon);
    }

    @ApiOperation(value = "修改九宫格")
    @PostMapping(value = "updateModuleById")
    public Integer updateModuleById(Integer id, String name, MultipartFile file) {
        return newsServiceImp.updateModule(id, name, file);
    }

    @ApiOperation(value = "添加资讯")
    @PostMapping(value = "addNews")
    public int addNews(String title, String content, String author, String source, Integer isTop) {
        return newsServiceImp.addNews(title, content, author, source, isTop);
    }

    @ApiOperation(value = "删除资讯")
    @GetMapping(value = "delNews/{id}")
    public int delNews(@PathVariable Integer id) {
        return newsServiceImp.delNews(id);
    }

    @ApiOperation(value = "修改资讯状态")
    @GetMapping(value = "updateStatus")
    public int updateStatus(Integer id, Integer status) {
        return newsServiceImp.updateStatus(id, status);
    }

    @ApiOperation(value = "据id查资讯")
    @GetMapping(value = "getNewsById/{id}")
    public ResponseResult getNewsById(@PathVariable Integer id) {
        return newsServiceImp.getNewsById(id);
    }

    @ApiOperation(value = "修改资讯")
    @PostMapping(value = "updateNews")
    public int updateNews(Integer id, String title, String content) {
        return newsServiceImp.updateNews(id, title, content);
    }

    @ApiOperation(value = "获取所有或搜索所需资讯")
    @PostMapping(value = "getNewsListOrSearch")
    public ResponseResult getNewsListOrSearch(@RequestParam(defaultValue = "1") Integer currPage,
                                              @RequestParam(defaultValue = "10") Integer pageSize,
                                              String title, Integer reviewStatus) {
        return newsServiceImp.getAllNewsOrSearch(title, reviewStatus, currPage, pageSize);
    }
}
