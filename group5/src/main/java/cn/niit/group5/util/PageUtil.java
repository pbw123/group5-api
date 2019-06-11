package cn.niit.group5.util;

import cn.niit.group5.entity.dto.PageDTO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PageUtil {
    public static Map<Object,Object> pageDemo(Integer currPage, Integer pageSize)
    {
        HashMap<Object, Object> map = new HashMap<>();
        map.put("index",(currPage-1)*pageSize);
        map.put("pageSize",pageSize);
        return map;
    }

    public static PageDTO page(Integer currPage, Integer pageSize, List list)
    {
        Integer first=(currPage-1)*pageSize;
        Integer last=currPage*pageSize;
        int size = list.size();
        if (last>size){
            last=size;
        }
        List resultList = list.subList(first, last);
        return new PageDTO(first,last,size,resultList);
    }
}
