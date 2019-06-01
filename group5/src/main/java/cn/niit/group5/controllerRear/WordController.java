package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.WordServiceImp;
import cn.niit.group5.util.Manager;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Manager
@Api(tags = "8.热词管理")
@RequestMapping(value = "/word")
public class WordController {
    @Autowired
    private WordServiceImp wordServiceImp;
}
