package cn.niit.group5.mapper;

import cn.niit.group5.entity.Module;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class NewsMapperTest extends  BasicTest{

    @Autowired
    NewsMapper newsMapper;
//    @Test
//    public void getNewsByReviewTest()
//    {
//        News n = new News();
//        n.setCurrPage(7);
//        n.setCurrPage(1);
//        n.setReviewStatus(0);
//        List<News> news = newsMapper.getNewsByReview(n);
//        news.forEach(news1 -> System.out.println(news1.toString()));
//    }
    @Autowired
    ModuleMapper moduleMapper;
    @Test
    public void addModuleTest()
    {
        Module module=new Module();
        module.setIcon("4.png");
        module.setName("鬼谷纵横");
        int i = moduleMapper.addModule(module);
        System.out.println(i+"========");
    }

    @Autowired
    ExpertMapper expertMapper;
    @Test
    public void updateExpertQuestionMapper()
    {
        String content="专家你好，可以加个微信吗";
        Integer id=1;
        int i = expertMapper.updateExpertQuestion(content, id);
        System.out.println(i+"========");
    }
    @Test
    public void delExpertQuestion()
    {
        Integer id=2;
        int i = expertMapper.delExpertQuestion(id);
        System.out.println(i+"========");
    }

    @Test
    public void delReplyQuestionTest()
    {
        Integer id=1;
        int i = newsMapper.delReplyQuestion(id);
        System.out.println(i+"========");
    }
}