package cn.niit.group5.serviceImp;

import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.util.ResponseResult;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class ExchangeServiceImpTest extends BasicTest {
@Autowired
ExchangeServiceImp exchangeServiceImp;
    @Test
    public void checkLike() {
        Integer userId=1;
        String column="exchange_id";
        Integer exchangeId=1;
        ResponseResult responseResult = exchangeServiceImp.checkLike(userId, column, exchangeId);
        System.out.println(responseResult.toString());
    }
}