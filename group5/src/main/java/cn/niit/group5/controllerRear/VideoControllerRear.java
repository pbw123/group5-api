package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.VideoServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@Manager
@Api(tags = "4.视频管理")
@RequestMapping(value = "/video")
public class VideoControllerRear {
    @Autowired
    private VideoServiceImp videoServiceImp;

    @ApiOperation(value = "查询所有视频分类")
    @GetMapping(value = "getAllVideoSortList")
    public ResponseResult getAllVideoSortList(@RequestParam(defaultValue = "1") Integer currPage,
                                              @RequestParam(defaultValue = "10") Integer pageSize) {
        return videoServiceImp.getAllVideoSort(currPage, pageSize);
    }


    @ApiOperation(value = "添加视频分类")
    @GetMapping(value = "addVideoSort/{name}")
    public Integer addVideoSort(@PathVariable String name) {
        return videoServiceImp.addVideoSort(name);
    }

    @ApiOperation(value = "删除视频分类")
    @GetMapping(value = "removeVideoSortById/{id}")
    public Integer removeVideoSortById(@PathVariable Integer id) {
        return videoServiceImp.removeVideoSort(id);
    }

    @ApiOperation(value = "按分类名搜索视频分类")
    @GetMapping(value = "searchVideoSortByName/{name}")
    public ResponseResult searchVideoSortByName(@PathVariable String name) {
        return videoServiceImp.searchVideoSort(name);
    }

    @ApiOperation(value = "添加视频")
    @PostMapping(value = "addVideo")
    public Integer addVideo(String title, Integer relationModule, String icon,
                            String videoUrl) {
        return videoServiceImp.addVideo(title, relationModule, icon, videoUrl);
    }

    @ApiOperation(value = "所有视频")
    @GetMapping(value = "getAllVideo")
    public ResponseResult getAllVideo(@RequestParam(defaultValue = "1") Integer currPage,
                                      @RequestParam(defaultValue = "10") Integer pageSize) {
        return videoServiceImp.getAllVideo(currPage, pageSize);
    }

    @ApiOperation(value = "修改视频标题")
    @PostMapping(value = "changeVideoTitleById")
    public Integer changeVideoTitleById(Integer id, String title) {
        return videoServiceImp.changeVideoTitleById(id, title);
    }

    @ApiOperation(value = "删除视频")
    @GetMapping(value = "removeVideoById/{id}")
    public Integer removeVideoById(@PathVariable Integer id) {
        return videoServiceImp.removeVideoById(id);
    }

    @ApiOperation(value = "据视频分类搜索视频")
    @PostMapping(value = "searchVideoBySort")
    public ResponseResult searchVideoBySort(Integer sort, Integer currPage, Integer pageSize) {
        return videoServiceImp.searchVideoBySort(sort, currPage, pageSize);
    }
    @ApiOperation(value = "据审核状态搜索视频")
    @PostMapping(value = "searchVideoByReview")
    public ResponseResult searchVideoByReview( Integer review,
                                              @RequestParam(defaultValue = "1") Integer currPage,
                                              @RequestParam(defaultValue = "10") Integer pageSize) {
        return videoServiceImp.searchVideoByReview(review, currPage, pageSize);
    }

    @ApiOperation(value = "添加展播")
    @PostMapping(value = "addExhibition")
    public Integer addExhibition(String name, MultipartFile file) {
        return videoServiceImp.addExhibition(name, file);
    }

    @ApiOperation(value = "修改展播")
    @PostMapping(value = "changeExhibition")
    public Integer changeExhibition(Integer id, String name, MultipartFile file) {
        return videoServiceImp.updateExhibition(id, name, file);
    }

    @ApiOperation(value = "所有展播列表")
    @GetMapping(value = "getAllExhibition")
    public ResponseResult getAllExhibition(@RequestParam(defaultValue = "1") Integer currPage,
                                           @RequestParam(defaultValue = "10") Integer pageSize) {
        return videoServiceImp.getAllExhibition(currPage, pageSize);
    }

    @ApiOperation(value = "撤销展播")
    @GetMapping(value = "recall/{id}")
    public Integer recall(@PathVariable Integer id) {
        Integer status = 0;
        return videoServiceImp.recallExhibition(id, status);
    }

    @ApiOperation(value = "发布展播")
    @GetMapping(value = "issue/{id}")
    public Integer issue(@PathVariable Integer id) {
        Integer status = 1;
        return videoServiceImp.recallExhibition(id, status);
    }

    @ApiOperation(value = "删除展播")
    @GetMapping(value = "deleteExhibition/{id}")
    public Integer deleteExhibition(@PathVariable Integer id) {
        return videoServiceImp.delExhibition(id);
    }

    @ApiOperation(value = "添加展播的视频")
    @PostMapping(value = "addExhibitionVideo")
    public Integer addExhibitionVideo(Integer id, Integer video_id) {
        return videoServiceImp.addExhibitonVideo(id, video_id);
    }

    @ApiOperation(value = "按标题搜索展播")
    @GetMapping(value = "searchExhibitionByTile/{title}")
    public ResponseResult searchExhibitionByTile(@PathVariable String title) {
        return videoServiceImp.searchExhibition(title);
    }

    @ApiOperation(value = "移除展播中的视频")
    @GetMapping(value = "removeExhibitionVideo/{video_id}")
    public Integer removeExhibitionVideo(@PathVariable Integer video_id) {
        return videoServiceImp.removeExhibitionVideo(video_id);
    }

}
