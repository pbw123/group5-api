package cn.niit.group5.controller;

import cn.niit.group5.entity.Img;
import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.mapper.ImgMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Change extends BasicTest {

    @Autowired
    ImgMapper imgMapper;

    @Test
    public void updateHttp() {
        List<Img> imgs = imgMapper.selectAll();
//        imgs.forEach(img-> System.out.println(img.getImgUrl()));
//        ArrayList<String> imgs = new ArrayList<>();
//        imgs.add("https://1");
//        imgs.add("http://2");
//        imgs.add("https://3");
//        imgs.add("http://4");
            for (int i = 0; i < imgs.size(); i++) {
                String sb=imgs.get(i).getImgUrl();
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
                            int id= imgs.get(i).getId();
                            HashMap<Object, Object> map = new HashMap<>();
                            map.put("id", id);
                            map.put("url", sb);
                            imgMapper.updateImg(map);
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
