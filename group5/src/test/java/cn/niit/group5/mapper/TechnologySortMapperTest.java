package cn.niit.group5.mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TechnologySortMapperTest extends BasicTest{

    @Autowired
    TechnologySortMapper technologySortMapper;
    @Test
    public void addSortTest()
    {
        String name="天下";
        String icon="2.jpg";
        technologySortMapper.addSortTechno(name, icon);
    }
}