package cn.niit.group5.mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

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

}