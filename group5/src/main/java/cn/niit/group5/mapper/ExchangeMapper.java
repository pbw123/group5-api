package cn.niit.group5.mapper;

import cn.niit.group5.entity.Exchange;
import cn.niit.group5.entity.Like;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExchangeMapper {
    //   所有交流文章
    List<Exchange> getExchangeList();

    //    发布一条交流
    int insertExchange(Exchange exchange);

    //    我的交流文章
    List<Exchange> getExchangeListByUserId(Integer userId);

    //    交流详情
    Exchange getExchangeDetailById(Integer id);

    //删除我的交流文章
    @Update("UPDATE  t_exchange SET is_delete=1 WHERE id=#{0}")
    int deleteMyExchange(Integer exchangeId);

    //模糊查询交流
    @Select("SELECT * FROM t_exchange WHERE content LIKE concat('%',#{content},'%') order by " +
            "create_time desc")
    List<Exchange> getExchangeBySearch(String content);

    //    交流/评论的点赞数量
    @Select("SELECT COUNT(${column}) FROM t_like WHERE  ${column}=#{id} and status=0")
    int getExchangeLikeNumber(String column,
                              @Param("id") Integer id);

    //    用户是否曾经点赞过该交流/评论
    @Select("SELECT * FROM t_like WHERE user_id=#{userId} and ${column}=#{id}")
    Like isLikeOrNo(@Param("userId") Integer userId, String column, @Param("id") Integer id);

    //首次点击喜欢
    @Insert("INSERT INTO t_like(user_id,${column}) VALUES(#{userId},#{id})")
    int addLike(String column, @Param("userId") Integer userId, @Param("id") Integer id);

    //切换喜欢/未喜欢状态
    int updateStatus(@Param("status") Integer status, @Param("id") Integer id);

    //    据内容和用户查询交流
    @Select("select * from t_exchange where user_id=#{userId} and create_time=#{createTime}")
    Exchange getByTime(@Param("userId") Integer userId, @Param("createTime") String createTime);

    //    据id查询交流
    @Select("select * from t_exchange where id=#{0}")
    Exchange getById(Integer id);

    //统计回复数量
    int getExchangeReplyNumber(Integer exchangeId);

    //    id查询今日的交流数量
    @Select("select count(*) from t_exchange where to_days(create_time)= to_days(now()) and user_id=#{id}")
    int findExchangeCount(@Param("id") Integer id);

    //    今日的回答提问数量
    @Select("select count(*) from t_reply  where to_days(reply_time)= to_days(now()) and user_id=#{uId} AND exchange_id=#{eId}")
    int findExchangeReplyCount(@Param("uId") Integer uId,@Param("eId")Integer eId);
}