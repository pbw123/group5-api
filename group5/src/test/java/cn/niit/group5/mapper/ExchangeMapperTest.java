package cn.niit.group5.mapper;

import cn.niit.group5.entity.Exchange;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ExchangeMapperTest extends BasicTest {
    @Autowired
    ExchangeMapper exchangeMapper;
    @Test
    public void updateStatus()
    {
        Integer status=1;
        Integer id=1;
        int i = exchangeMapper.updateStatus(status, id);
        System.out.println(i+"+++++++++++++++");

    }

    @Test
    public void getExchangeTest()
    {
        Exchange exchangeTest = exchangeMapper.getExchangeDetailById(1);
        System.out.println(exchangeTest.toString());
    }
}