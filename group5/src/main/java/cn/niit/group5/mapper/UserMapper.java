package cn.niit.group5.mapper;

import cn.niit.group5.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    //添加一条记录
    int insert(User record);

    User selectByPrimaryKey(Integer id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    //根据手机号码查询用户
    User getUserByPhoneNumber(String phoneNumber);
//    注册
    int signUp(User user);

}