package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.dto.UserDTO;
import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.util.ResponseResult;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class UserServiceImpTest extends BasicTest {
    @Autowired
    UserServiceImp userServiceImp;

    @Test
    public void userSignIn() {
        UserDTO userDTO=new UserDTO();
        userDTO.setPhoneNumber("17805136692");
        userDTO.setPassword("JAVA22");
        ResponseResult responseResult = userServiceImp.userSignIn(userDTO);
        System.out.println(responseResult.toString());
    }

    @Test
    public void addUserTest()
    {
    }

    @Test
    public void pageTest()
    {
        ResponseResult allUser = userServiceImp.getAllUser(1, 6);
        System.out.println(allUser.toString());
    }
}