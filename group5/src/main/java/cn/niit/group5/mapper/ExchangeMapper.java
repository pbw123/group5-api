package cn.niit.group5.mapper;

import cn.niit.group5.entity.Exchange;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import java.util.List;

@Mapper
@Component
public interface ExchangeMapper {
//   所有交流文章
    List<Exchange> getExchangeList();
//    发布一条交流
    void insertExchange(Exchange exchange);
}