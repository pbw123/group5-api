package cn.niit.group5.controllerRear;

import cn.niit.group5.entity.User;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.mapper.UserMapper;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/rear/user")
@Api(tags = "后端-用户模块")
@Manager
public class UserControllerRear {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private QuestionMapper questionMapper;
    @GetMapping(value = "getUserList")
    public ResponseResult getUserList()
    {
        User user = questionMapper.getUserById(1);
        return  ResponseResult.success(user);
    }

}
