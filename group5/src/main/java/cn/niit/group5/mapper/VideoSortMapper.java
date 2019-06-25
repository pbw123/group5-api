package cn.niit.group5.mapper;

import cn.niit.group5.entity.VideoSort;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface VideoSortMapper {
    int deleteByPrimaryKey(Integer id);

    //添加视频分类
    int insert(VideoSort record);

    //获取所有视频分类
    List<VideoSort> selectAll(VideoSort videoSort);

    //    按视频分类名称搜索视频分类表
    @Select(" SELECT * FROM t_video_sort WHERE sort_name LIKE concat('%',#{name},'%')")
    List<VideoSort> selectSortByName(@Param("name") String name);
}