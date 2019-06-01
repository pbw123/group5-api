package cn.niit.group5.util;

import java.util.HashMap;
import java.util.Map;

public class PageUtil {
    public static Map<Object,Object> pageDemo(Integer currPage, Integer pageSize)
    {
        HashMap<Object, Object> map = new HashMap<>();
        map.put("index",(currPage-1)*pageSize);
        map.put("pageSize",pageSize);
        return map;
    }
}
