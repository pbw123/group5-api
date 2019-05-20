package cn.niit.group5.mapper;

import cn.niit.group5.entity.Video;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface VideoMapper {
 List<Video> selectVideo();
}