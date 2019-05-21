package cn.niit.group5.mapper;

import cn.niit.group5.entity.Collection;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface CollectionMapper {
    //收藏问答
    void collectQuestion(Collection collection);
    //收藏交流
    void collectExchange(Collection collection);
    //通过用户id遍历收藏的问答
    List<Collection> getCollectQuestionById(int userId);
    //通过用户id遍历收藏的交流
    List<Collection> getCollectExchangeById(int userId);
    //通过用户id遍历收藏的资讯
    List<Collection> getCollectNewsById(int userId);
    //通过用户id遍历收藏的视频
    List<Collection> getCollectVideoById(int userId);
}