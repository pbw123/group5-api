package cn.niit.group5.service;

import cn.niit.group5.entity.dto.UserDTO;

public interface UserService {
//    登录
    int signIn(UserDTO userDTO);
//    注册
    int signUp(UserDTO userDTO);
}
