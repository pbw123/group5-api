package cn.niit.group5.controllerRear;

import cn.niit.group5.controller.NewsController;
import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.util.ResponseResult;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class NewsControllerRearTest extends BasicTest {
@Autowired
NewsController newsController;
//    @Test
//    public void getAllModule(Integer currPage,Integer pageSize) {
//        ResponseResult allModule = newsControllerRear.getAllModule(currPage,pageSize);
//        System.out.println(allModule.toString());
//    }

    @Test
    public void getNewsDetail()
    {
        ResponseResult newsDetail = newsController.getNewsDetail(1, 1);
        System.out.println(newsDetail.toString());
    }
}