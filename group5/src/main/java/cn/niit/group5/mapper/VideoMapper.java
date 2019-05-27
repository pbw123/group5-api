package cn.niit.group5.mapper;

import cn.niit.group5.entity.Video;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface VideoMapper {
 List<Video> selectVideo();
 //模糊查询视频
 @Select("SELECT * FROM t_video WHERE video_title LIKE concat('%',#{videoTitle},'%') order by create_time desc")
 List<Video> getVideoBySearch(String title);
}