package cn.niit.group5.mapper;

import cn.niit.group5.entity.User;
import cn.niit.group5.util.PageUtil;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

public class UserMapperTest extends BasicTest {
    @Autowired
    UserMapper userMapper;

    @Test
    public void addUserTest() {
        User user = new User();
        user.setRegitsterTime(new Timestamp(System.currentTimeMillis()));
        user.setUserName("张娟小姐姐");
        user.setHeadUrl("www.baidu.com");
        user.setPhoneNumber("178051366923");
        user.setSex("女");
        user.setIdentity("科教管理人员");
        user.setUserAddress("南京");
        user.setEmail("2342@qq.com");
        user.setRegitsterTime(new Timestamp(System.currentTimeMillis()));
        int index = userMapper.addUser(user);
        if (index == 1)
            System.out.println(user.toString());
        else
            System.out.println("添加失败");
    }

    @Test
    public void getUserByIdTest() {
//        User userById = userMapper.getUserById(1);
//        System.out.println(userById.toString());
        List<User> userListByLog = userMapper.getUserListByLog();
        userListByLog.forEach(user -> System.out.println(user));
    }

    @Autowired
    SupplyBuyMapper supplyBuyMapper;
//    @Test
//    public void  getSeeKDetailTest(
//    ) {
//        Integer id=1;
//        SupplyBuy supplyBuy = supplyBuyMapper.getSeekDetail(id);
//        if (supplyBuy==null)
//            System.out.println("返回空");
//        else
//        supplyBuy.setTime(StringUtil.getDateString(supplyBuy.getCreateTime()));
//        supplyBuy.setEndTime(StringUtil.getDateString(supplyBuy.getLimitTime()));
//        System.out.println(supplyBuy.toString());
//    }

    @Test
    public void getAllUserTest()
    {
        Map<Object, Object> map = PageUtil.pageDemo(1, 10);
        List<User> users = userMapper.selectAll(map);
        users.forEach(user -> System.out.println(user.toString()));
    }

    @Test
    public void searchUser()
    {
        Map<Object, Object> map =PageUtil.pageDemo(1,10);
//        map.put("index",0);
//        map.put("pageSize",10);
        map.put("keyword","学院");
        String keyword="江苏";
        List<User> users = userMapper.searchUser(map);
        System.out.println("++++++++++++++++++");
        users.forEach(user -> System.out.println(user.toString()));

    }

    @Test
    public void searchTest()
    {
        Map<Object, Object> map = PageUtil.pageDemo(1,10);
        map.put("userAddress","南京");
        map.put("identity","农技推广人员");
        List<User> users = userMapper.search(map);
        users.forEach(user -> System.out.println(user.toString()));
    }
}