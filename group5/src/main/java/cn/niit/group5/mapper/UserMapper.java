package cn.niit.group5.mapper;

import cn.niit.group5.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface UserMapper {

    //根据手机号码查询用户
    User getUserByPhoneNumber(@Param("phoneNumber") String phoneNumber);

    //
    @Select("select * from t_user where id=#{id}")
    User getUserById(@Param("id") Integer id);

    //注册
    int signUp(User user);

    //更新我的资料
    int updateMyMsg(User user);

    //更新我的积分
    int addScore(@Param("id") Integer userId, @Param("number") Integer number);

    //是否禁用/启用用户
    int setStatus(@Param("id") Integer id, @Param("status") Integer status);

    //    添加用户
    int addUser(User user);

    List<User> getUserListByLog();

    @Select("select * from t_user limit #{index},#{pageSize}")
    List<User> selectAll(Map<Object, Object> map);
    @Select("select * from t_user")
    List<User> getUserList();

    List<User> searchUser(Map<Object,Object>map);

    List<User>search(Map<Object,Object>map);
}