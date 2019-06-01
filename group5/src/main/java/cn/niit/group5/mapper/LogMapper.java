package cn.niit.group5.mapper;

import cn.niit.group5.entity.Log;
import cn.niit.group5.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface LogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Log record);

    Log selectById(Integer id);

    //获取推广日志列表
    List<Log> selectAll(Map<Object, Object> map);

    int updateByPrimaryKey(Log record);

    //    农技员列表
    List<User> getUserListByLog(User user);

    //据上报人或标题查询日志
    List<Log> searchLogs(Map<Object, Object> map);

}