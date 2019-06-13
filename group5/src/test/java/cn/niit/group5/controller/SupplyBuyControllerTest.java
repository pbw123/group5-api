package cn.niit.group5.controller;

import cn.niit.group5.entity.SupplyBuy;
import cn.niit.group5.mapper.SupplyBuyMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
@RunWith(SpringRunner.class)
@SpringBootTest
public class SupplyBuyControllerTest {
@Resource
    SupplyBuyMapper supplyBuyMapper;
    @Test
    public void insertSeek() {
        SupplyBuy supplyBuy=new SupplyBuy();
        supplyBuy.setUserId(2);
        supplyBuy.setSort("蔬菜");
        supplyBuy.setIsSupplyBuy(1);
        supplyBuyMapper.insertSeek(supplyBuy);
        System.out.println(supplyBuy);
    }

    @Autowired
    SupplyBuyController supplyBuyController;
    @Test
    public void getSupplyListTest()
    {
//        ResponseResult responseResult = supplyBuyController.supplyList();
//        System.out.println(responseResult.toString());
    }

//    @Test
//    public void getSeekListTest()
//    {
//        ResponseResult responseResult = supplyBuyController.seekList();
//        System.out.println(responseResult.toString());
//    }
}