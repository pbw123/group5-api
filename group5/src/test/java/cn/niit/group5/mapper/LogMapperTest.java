package cn.niit.group5.mapper;

import cn.niit.group5.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class LogMapperTest extends BasicTest {
@Autowired
    LogMapper logMapper;
@Test
public void getAllList()
{
    User u = new User();
    u.setCurrPage(0);
    u.setPageSize(10);
//    u.setIdentity("学生");
    u.setIdentity("其他");
    u.setUserName("元");
    List<User> all = logMapper.getUserListByLog(u);
//    List<Log> all = logMapper.selectAll();
//    List<User> all = logMapper.getAll();
//    logs.forEach(user -> System.out.println(user));
    all.forEach(user -> System.out.println(user.toString()));
}



}