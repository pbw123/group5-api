package cn.niit.group5.mapper;

import cn.niit.group5.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface UserMapper {

    //根据手机号码查询用户
    User getUserByPhoneNumber(@Param("phoneNumber") String phoneNumber);

    //查询用户详情
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

    //
    @Select("select * from t_user limit #{index},#{pageSize}")
    List<User> selectAll(Map<Object, Object> map);

    @Select("select * from t_user")
    List<User> findAll();
    //    所有用户列表
    @Select("select * from t_user order by regitster_time desc")
    List<User> getUserList();

    //据关键字搜索匹配用户名字、地址、手机号
    List<User> searchUser(Map<Object, Object> map);

    //据用户地址或身份搜索用户
    List<User> search(Map<Object, Object> map);

    //删除一个用户
    @Update("update t_user set is_delete=1 where id=#{0}")
    int delUser(Integer id);

    int updateUrl(Map<Object, Object> map);

}