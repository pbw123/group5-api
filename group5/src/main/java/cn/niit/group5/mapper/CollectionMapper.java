package cn.niit.group5.mapper;

import cn.niit.group5.entity.Collection;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface CollectionMapper {
    //收藏问答
    void collectQuestion(Collection collection);
    //收藏交流
    void collectExchange(Collection collection);
    //收藏资讯
    void collectNews(Collection collection);
    //收藏视频
    void collectVideo(Collection collection);
    //通过用户id遍历收藏的问答
    List<Collection> getCollectQuestionById(int userId);
    //通过用户id遍历收藏的交流
    List<Collection> getCollectExchangeById(int userId);
    //通过用户id遍历收藏的资讯
    List<Collection> getCollectNewsById(int userId);
    //通过用户id遍历收藏的视频
    List<Collection> getCollectVideoById(int userId);
//  根据用户id和文章id来查询是否有这篇文章
   @Select("select * from t_collection where user_id=#{userId} and news_id=#{newsId}")
     Collection getCollectionById(@Param("userId")Integer userId,
                                        @Param("newsId") Integer questionId);


    @Insert("INSERT INTO t_collection(user_id,news_id) VALUES (#{userId},#{newsId})")
    int addNewsCollect(@Param("userId") Integer userId,@Param("newsId") Integer newsId);

   int isNoCollect(@Param("id")Integer id,@Param("status")Integer status);



}