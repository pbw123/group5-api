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
    ImgMapper imgMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    NewsMapper newsMapper;

   @Test
    public void updateHttp() {
//        List<Img> imgs = imgMapper.selectAll();

//        imgs.forEach(img-> System.out.println(img.getImgUrl()));
//        ArrayList<String> imgs = new ArrayList<>();
//        imgs.add("https://1");
//        imgs.add("http://2");
//        imgs.add("https://3");
//        imgs.add("http://4");
//       List<User> all = userMapper.findAll();
       List<News> all = newsMapper.findAll();
       for (int i = 0; i < all.size(); i++) {
                String sb=all.get(i).getIcon();
                if(sb==null){
                    System.out.println("null=========");
                    continue;
                }else {
                    if (sb.length() > 6) {
                        char n = sb.charAt(4);
                        String s = String.valueOf(n);
                        if ((s.equals(":"))) {
                            StringBuilder str = new StringBuilder(sb);
                            str.insert(4, "s");
                            sb = str.toString();
                            int id= all.get(i).getId();
                            HashMap<Object, Object> map = new HashMap<>();
                            map.put("id", id);
                            map.put("url", sb);
//                            imgMapper.updateImg(map);
//                            userMapper.updateUrl(map);
                            newsMapper.updateIcon(map);
                            System.out.println("-------"+i);
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
