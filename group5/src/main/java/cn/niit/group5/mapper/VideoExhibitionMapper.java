package cn.niit.group5.mapper;

import cn.niit.group5.entity.VideoExhibition;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface VideoExhibitionMapper {
    int deleteOrNo(Integer is_delete,Integer id);

    int insert(VideoExhibition record);

    VideoExhibition selectHasOrNo(VideoExhibition videoExhibition);

    List<VideoExhibition> selectAll();

    int updateByPrimaryKey(VideoExhibition record);

}