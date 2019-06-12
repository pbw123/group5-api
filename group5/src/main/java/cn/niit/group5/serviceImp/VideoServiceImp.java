package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.*;
import cn.niit.group5.mapper.*;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import cn.niit.group5.util.StringUtil;
import cn.niit.group5.util.UploadImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;
import java.util.List;

@Service
public class VideoServiceImp {
    @Autowired
    private VideoSortMapper videoSortMapper;

    public ResponseResult getAllVideoSort(Integer currPage, Integer pageSize) {
        Integer index = (currPage - 1) * pageSize;
        VideoSort videoSort = new VideoSort();
        videoSort.setCurrPage(index);
        videoSort.setPageSize(pageSize);
        List<VideoSort> videoSorts = videoSortMapper.selectAll(videoSort);
        return ResponseResult.success(videoSorts);
    }

    public Integer addVideoSort(String name) {
        VideoSort videoSort = new VideoSort();
        videoSort.setSortName(name);
        int insert = videoSortMapper.insert(videoSort);
        if (insert == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    @Autowired
    private VideoMapper videoMapper;

    public Integer addVideo(String title, Integer relationModule, String icon,
                            String videoUrl) {
        Video video = new Video();
        video.setVideoUrl(videoUrl);
        video.setCreateTime(new Timestamp(System.currentTimeMillis()));
        video.setRelationModule(relationModule);
        video.setVideoTitle(title);
            video.setImg(icon);
        int i = videoMapper.addVideo(video);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    @Autowired
    private ExhibitionMapper exhibitionMapper;

    public ResponseResult getAllExhibition(Integer currPage, Integer pageSize) {
        Integer index = (currPage - 1) * pageSize;
        List<Exhibition> exhibitions = exhibitionMapper.selectAll(index, pageSize);
        return ResponseResult.success(exhibitions);
    }

    //    0未发布，1已发布
    public Integer recallExhibition(Integer id, Integer status) {
        Exhibition exhibition = new Exhibition();
        exhibition.setId(id);
        exhibition.setState(status);
        int i = exhibitionMapper.updateByPrimaryKey(exhibition);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer addExhibition(String name, MultipartFile file) {
        Exhibition exhibition = new Exhibition();
        exhibition.setTitle(name);
        if (file != null) {
            String s = UploadImg.ossUpload(file);
            exhibition.setImg(s);
        }
        int insert = exhibitionMapper.insert(exhibition);
        if (insert == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateExhibition(Integer id, String title, MultipartFile file) {
        Exhibition exhibition = new Exhibition();
        exhibition.setTitle(title);
        exhibition.setId(id);
        if (file != null) {
            String s = UploadImg.ossUpload(file);
            exhibition.setImg(s);
        }
        int i = exhibitionMapper.updateByPrimaryKey(exhibition);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer delExhibition(Integer id) {
        int i = exhibitionMapper.deleteByPrimaryKey(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    @Autowired
    private VideoExhibitionMapper videoExhibitionMapper;

    public Integer addExhibitonVideo(Integer exhibition_id, Integer video_id) {
        VideoExhibition videoExhibition = new VideoExhibition();
        videoExhibition.setExhibitionId(exhibition_id);
        videoExhibition.setVideoId(video_id);
        VideoExhibition v = videoExhibitionMapper.selectHasOrNo(videoExhibition);
        if (v == null) {
            int insert = videoExhibitionMapper.insert(videoExhibition);
            if (insert == 1)
                return StatusConst.SUCCESS;
            else
                return StatusConst.ERROR;
        }
        Integer is_delete = 0;
        int i = videoExhibitionMapper.deleteOrNo(is_delete, v.getId());
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer removeExhibitionVideo(Integer video_id) {
        Integer is_delete = 1;
        int i = videoExhibitionMapper.deleteOrNo(is_delete, video_id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer removeVideoSort(Integer id) {
        int i = videoSortMapper.deleteByPrimaryKey(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult searchVideoSort(String name) {
        List<VideoSort> videoSorts = videoSortMapper.selectSortByName(name);
        return ResponseResult.success(videoSorts);
    }

    public ResponseResult searchExhibition(String title) {
        List<Exhibition> exhibitions = exhibitionMapper.searchExhibition(title);
        return ResponseResult.success(exhibitions);
    }

    public ResponseResult getAllVideo(Integer currPage, Integer pageSize) {
        Video video = new Video();
        Integer index = (currPage - 1) * pageSize;
        video.setCurrPage(index);
        video.setPageSize(pageSize);
        List<Video> videos = videoMapper.selectAllVideo(video);
        return ResponseResult.success(videos);
    }

    public Integer changeVideoTitleById(Integer id, String title) {
        Video video = new Video();
        video.setId(id);
        video.setVideoTitle(title);
        int i = videoMapper.updateVideoTitle(video);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer removeVideoById(Integer id) {
        int i = videoMapper.removeVideo(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;

    }

    public ResponseResult searchVideoBySort(Integer sort, Integer currPage, Integer pageSize) {
        Video video = new Video();
        video.setCurrPage(currPage);
        video.setPageSize(pageSize);
        video.setVideoSort(sort);
        List<Video> videos = videoMapper.getVideoBySort(video);
        return ResponseResult.success(videos);
    }

    public ResponseResult searchVideoByReview(Integer review, Integer currPage, Integer pageSize) {
        Video video = new Video();
        video.setCurrPage((currPage-1)*pageSize);
        video.setPageSize(pageSize);
        video.setReviewState(review);
        List<Video> videos = videoMapper.getVideoByReview(video);
        return ResponseResult.success(videos);
    }

    @Autowired
    private CollectionMapper collectionMapper;
@Autowired
private NewsMapper newsMapper;
    public ResponseResult getVideoDetail(Integer userId, Integer id) {
        newsMapper.addReadNumber("t_video", "read_number", id);
        String column = "video";
        Video video = videoMapper.getVideoDetail(id);
        Timestamp createTime = video.getCreateTime();
        if (createTime!=null)
            video.setTime(StringUtil.getDateString(createTime));

        Collection collection = collectionMapper.getCollectionById(userId, column, id);
        if (collection == null || collection.getStatus() == 1)
            video.setIsCollect(1);
        else
            video.setIsCollect(0);

        return ResponseResult.success(video);
    }

}
