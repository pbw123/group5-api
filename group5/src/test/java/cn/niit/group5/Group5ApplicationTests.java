package cn.niit.group5;

import cn.niit.group5.entity.Module;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.ModuleMapper;
import cn.niit.group5.mapper.ReplyMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Group5ApplicationTests {

    @Test
    public void contextLoads() {
    }

    @Autowired
    private ModuleMapper moduleMapper;
    @Test
    public void indexTest()
    {
        List<Module> lists = moduleMapper.getIndexModule(1);
        for (Module list:lists)
        {
            System.out.println(list);
        }
    }
    @Autowired
    private ReplyMapper replyMapper;
    @Test
    public void getReplyMapperTest()
    {
        List<Reply> myReplys = replyMapper.getMyReplyById(1);
        myReplys.forEach((reply) -> System.out.println(reply+"===="));

    }
}
