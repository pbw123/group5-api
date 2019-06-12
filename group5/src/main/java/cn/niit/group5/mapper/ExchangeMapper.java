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

    //    用户是否点赞了该交流/评论
    @Select("SELECT * FROM t_like WHERE user_id=#{userId} and ${column}=#{id}")
    Like isLikeOrNo(@Param("userId") Integer userId, String column, @Param("id") Integer id);

    @Insert("INSERT INTO t_like(user_id,${column}) VALUES(#{userId},#{id})")
    int addLike(String column, @Param("userId") Integer userId, @Param("id") Integer id);

    int updateStatus(@Param("status") Integer status, @Param("id") Integer id);

//    据内容和用户查询交流
    @Select("select * from t_exchange where user_id=#{userId} and create_time=#{createTime}")
    Exchange getByTime(@Param("userId")Integer userId,@Param("createTime") String createTime);

    @Select("select * from t_exchange where id=#{0}")
    Exchange getById(Integer id);

}