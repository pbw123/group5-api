package cn.niit.group5.controllerRear;

import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.util.ResponseResult;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class NewsControllerRearTest extends BasicTest {
@Autowired
NewsControllerRear newsControllerRear;
    @Test
    public void getAllModule(Integer currPage,Integer pageSize) {
        ResponseResult allModule = newsControllerRear.getAllModule(currPage,pageSize);
        System.out.println(allModule.toString());
    }
}