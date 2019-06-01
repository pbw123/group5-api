package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Log;
import cn.niit.group5.entity.Types;
import cn.niit.group5.entity.User;
import cn.niit.group5.mapper.LogMapper;
import cn.niit.group5.mapper.TypesMapper;
import cn.niit.group5.util.PageUtil;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LogserviceImp {
    @Autowired
    private LogMapper logMapper;

    public ResponseResult getLogUserList(String identity, String userName, Integer currPage,
                                         Integer pageSize) {
        User user = new User();
        user.setCurrPage(0);
        user.setPageSize(pageSize * (currPage) - 1);
        user.setIdentity(identity);
        if (userName != null) {
            user.setUserName(userName);
        }
        System.out.println(user.getIdentity());
        List<User> users = logMapper.getUserListByLog(user);
        return ResponseResult.success(users);
    }

    @Autowired
    private TypesMapper typesMapper;

    public ResponseResult getAllTypes(Integer currPage, Integer pageSize) {
        Map<String, Object> map = new HashMap<>();
        map.put("index", (currPage - 1) * pageSize);
        map.put("pageSize", pageSize);
        List<Types> types = typesMapper.selectAll(map);
        return ResponseResult.success(types);
    }

    public Integer removeType(Integer id) {
        int i = typesMapper.delType(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer changeType(String name)
    {
        Types type = new Types();
        type.setTypeName(name);
        int i = typesMapper.updateType(type);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getTypeById(Integer id)
    {
        Types type = typesMapper.selectById(id);
        return ResponseResult.success(type);
    }

    public Integer addType(String name)
    {
        Types types = new Types();
        types.setTypeName(name);
        int insert = typesMapper.insert(types);
        if (insert==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getAllLog(Integer currPage,Integer pageSize)
    {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        List<Log> logs = logMapper.selectAll(map);
        return ResponseResult.success(logs);
    }

   public ResponseResult getLogById(Integer id)
   {
       Log log = logMapper.selectById(id);
       return ResponseResult.success(log);
   }

   public ResponseResult searchLogsList(String keyword,String type,Integer currPage,
                                        Integer pageSize)
   {
       Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
       map.put("keyword",keyword);
       map.put("type",type);
       List<Log> logs = logMapper.searchLogs(map);
       return ResponseResult.success(logs);
   }

}
