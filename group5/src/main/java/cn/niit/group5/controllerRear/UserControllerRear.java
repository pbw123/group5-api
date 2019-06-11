package cn.niit.group5.controllerRear;

import cn.niit.group5.entity.User;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.serviceImp.UserServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping(value = "/rear/user")
@Api(tags = "1.后台-用户管理")
@Manager
public class UserControllerRear {

    @Autowired
    private QuestionMapper questionMapper;

    @ApiOperation("查看用户详情")
    @GetMapping(value = "getUserList/{id}")
    public ResponseResult getUserList(@PathVariable Integer id) {
        User user = questionMapper.getUserById(id);
        return ResponseResult.success(user);
    }

    @Autowired
    private UserServiceImp userServiceImp;

    @ApiOperation(value = "启用/禁用用户")
    @GetMapping(value = "setStatusUser")
    public ResponseResult setStatusUser(Integer id) {
        return userServiceImp.setUserStatus(id);
    }

    @ApiOperation(value = "添加一个用户")
    @PostMapping(value = "addUser")
    public ResponseResult addUser(String userName, String sex, String phoneNumber,
                                  String email, String identity, String userAddress,
                                  MultipartFile file) {

        ResponseResult responseResult = userServiceImp.addUserRear(userName, sex,
                phoneNumber, email, identity, userAddress, file);
        return responseResult;

    }

    @ApiOperation(value = "手机号、地址、昵称搜索用户")
    @GetMapping(value = "searchUser")
    public ResponseResult searchUser(@RequestParam(defaultValue = "1") Integer currPage,
                                     @RequestParam(defaultValue = "10") Integer pageSize,
                                     String keyword) {
        return userServiceImp.search(currPage, pageSize, keyword);
    }

}
