package cn.niit.group5.controller;

import cn.niit.group5.entity.Img;
import cn.niit.group5.entity.News;
import cn.niit.group5.entity.User;
import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.mapper.NewsMapper;
import cn.niit.group5.mapper.UserMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Change extends BasicTest {
    @Autowired
    NewsMapper newsMapper;

    @Test
    public void updateHttp() {
//       取出所有数据
        List<News> all = newsMapper.findAll();
        for (int i = 0; i < all.size(); i++) {
//           取得每一条记录的同一个字段
            String sb = all.get(i).getIcon();
//                字段数据为空跳出循环
            if (sb == null) {
                continue;
            } else {
//                    字段数据长度大于6
                if (sb.length() > 6) {
//                        取得字段字符串数据下标为4的字符
                    char n = sb.charAt(4);
//                        char类型转成String类型
                    String s = String.valueOf(n);
//                        字符数据为:
                    if ((s.equals(":"))) {
                        StringBuilder str = new StringBuilder(sb);
//                            下标为4的位置插入字符s
                        str.insert(4, "s");
                        sb = str.toString();
//                            至此数据修改完成，下面是将新数据同步到数据库
                        int id = all.get(i).getId();
                        HashMap<Object, Object> map = new HashMap<>();
                        map.put("id", id);
                        map.put("url", sb);
                        newsMapper.updateIcon(map);
                        System.out.println("-------" + i);
                    }

                }

            }
        }


    }

    @Test
    public void updateUrl() {
//        HashMap<Object, Object> map = new HashMap<>();
//        map.put("id", 13);
//        map.put("url", "000000000000000000000");
//        imgMapper.updateImg(map);
        System.out.println("0000");
    }
}
