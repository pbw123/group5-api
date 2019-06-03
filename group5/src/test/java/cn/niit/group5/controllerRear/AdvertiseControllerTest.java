package cn.niit.group5.controllerRear;

import cn.niit.group5.entity.Advertise;
import cn.niit.group5.mapper.AdvertiseMapper;
import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.util.ResponseResult;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AdvertiseControllerTest extends BasicTest {

    @Autowired
    AdvertiseController advertiseController;
    @Test
    public void getAllAdvertiseIndex() {
        ResponseResult allAdvertiseIndex = advertiseController.getAllAdvertiseIndex(1,14);
        System.out.println(allAdvertiseIndex.toString());
    }

    @Test
    public void getAllAdvertiseOpen() {
        ResponseResult allAdvertiseOpen = advertiseController.getAllAdvertiseOpen(1,7);
        System.out.println(allAdvertiseOpen.toString());
    }
    @Autowired
    AdvertiseMapper advertiseMapper;
//    @Test
//    public void ifParamIsNullTest()
//    {
//        String title=null;
//        String content="内容";
//        String time=null;
//        Integer id=1;
//        Advertise advertise=new Advertise();
////        advertise.setCreateTime(Timestamp.valueOf(time));
//        advertise.setName(title);
//        advertise.setContent(content);
//        advertise.setId(id);
//        int i = advertiseMapper.updateAdvertise(advertise);
//        System.out.println(i);
//
//    }

//    @Test
//    public void searchByTypeTest()
//    {
//        ResponseResult responseResult = advertiseController.searchByType("认",);
//        System.out.println(responseResult.toString());
//    }
    @Test
    public void getAllAdvertiseTest()
    {
        Advertise advertise=new Advertise();
        advertise.setPageSize(7);
        advertise.setCurrPage(1);
        advertise.setIsOpen(0);
    advertiseMapper.selectAll(advertise);
    }
}