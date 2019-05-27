package cn.niit.group5.mapper;

import cn.niit.group5.entity.Exchange;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExchangeMapper {
//   所有交流文章
    List<Exchange> getExchangeList();
//    发布一条交流
    void insertExchange(Exchange exchange);
//    我的交流文章
List<Exchange>getExchangeListByUserId(Integer userId);
//    交流详情
Exchange getExchangeDetailById(Integer id);

//删除我的交流文章
    @Update("UPDATE  t_exchange SET is_delete=1 WHERE id=#{0}")
    int deleteMyExchange(Integer exchangeId);

    //模糊查询交流
    @Select("SELECT * FROM t_exchange WHERE content LIKE concat('%',#{content},'%') order by create_time desc")
    List<Exchange> getExchangeBySearch(String content);


}