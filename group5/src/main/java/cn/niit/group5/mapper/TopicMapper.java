package cn.niit.group5.mapper;

import cn.niit.group5.entity.News;
import cn.niit.group5.entity.Topic;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface TopicMapper {
//专题列表
    List<Topic> getTopicList();
//    专题资讯
    List<News>getNewsByTopicId(Integer id);
}