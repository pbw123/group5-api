package cn.niit.group5.mapper;

import cn.niit.group5.entity.Attention;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;

public class AttentionMapperTest extends BasicTest {

    @Autowired
    AttentionMapper attentionMapper;
    @Test
    public void updateStatus()
    {
        HashMap<Object, Object> map = new HashMap<>();
        map.put("status",0);
        map.put("id",7);
        int i = attentionMapper.updateStatus(map);

        System.out.println(i);
    }

    @Test
    public void getAttentionById()
    {
        Attention attention = attentionMapper.getAttentionById(1, 1);
        System.out.println(attention.toString());
    }

    @Test
    public void  getAttentionByUserId()
    {
        List<Attention> attentions = attentionMapper.getAttentionByUserId(33);
        attentions.forEach(attention -> System.out.println(attention.toString()));
    }

    @Test
    public void addAttention()
    {
        HashMap<Object, Object> map = new HashMap<>();
        map.put("userId",1);
        map.put("questionId",2);
        int i = attentionMapper.addAttention(map);
        System.out.println(i+"+++");
    }

}