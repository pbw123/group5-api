package cn.niit.group5.mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class VideoMapperTest extends BasicTest {
    @Autowired
    NewsMapper videoMapper;

    @Test
    public void addReadNumber() {
//        String column="t_video";
        String column="t_news";
        String column2="read_number";
        Integer id=1;
        int i = videoMapper.addReadNumber(column, column2, id);
        System.out.println(i+"++++++++");
    }
}