package cn.niit.group5.mapper;

import cn.niit.group5.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;
import java.util.List;

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
        if (index==1)
            System.out.println(user.toString());
        else
            System.out.println("添加失败");
    }
@Test
    public void getUserByIdTest()
    {
//        User userById = userMapper.getUserById(1);
//        System.out.println(userById.toString());
        List<User> userListByLog = userMapper.getUserListByLog();
        userListByLog.forEach(user -> System.out.println(user));
    }
}