package cn.niit.group5.mapper;

import cn.niit.group5.entity.Video;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface VideoMapper {
    List<Video> selectVideo();

    List<Video> selectAllVideo(Video video);

    //修改视频标题
    int updateVideoTitle(Video video);

    //模糊查询视频
    @Select("SELECT * FROM t_video WHERE video_title LIKE concat('%',#{videoTitle},'%') order by " +
            "create_time desc")
    List<Video> getVideoBySearch(String title);

    // 添加视频
    int addVideo(Video video);

    //    删除视频
    @Update("update t_video set is_delete=1 where id=#{0}")
    int removeVideo(Integer id);

    //    据视频分类查询视频
    List<Video> getVideoBySort(Video video);

//    据审核状态搜索视频
    List<Video>getVideoByReview(Video video);

//    查询视频详情
    @Select("select * from t_video where id=#{id}")
    Video getVideoDetail(@Param("id") Integer id);


}