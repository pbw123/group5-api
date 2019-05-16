package cn.niit.group5.mapper;

import cn.niit.group5.entity.Exchange;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ExchangeMapper {

    List<Exchange>getExchangeList(int userId);
    void insertExchange(Exchange exchange);
}