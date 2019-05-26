package cn.niit.group5;

import cn.niit.group5.entity.*;
import cn.niit.group5.mapper.*;
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

    @Test
    public void getModuleTest()
    {
        Module module = moduleMapper.getModuleById(1);
        System.out.println(module.getName()+"=====页面");
    }

    @Autowired
    private TechnologySortMapper technologySortMapper;
    @Test
    public void getNewsByTechnologySortIdTest()
    {
        List<News> news = technologySortMapper.getNewsBySortId(1);
        news.forEach(news1 -> System.out.println(news1));
    }

   @Test
    public void getNewsByAddress()
   {
       Address address=new Address();
       address.setId(18);
       List<News> indexByAddress = moduleMapper.getIndexDynamic(address);
       indexByAddress.forEach(news -> System.out.println(news));
   }
   @Test
    public void getTopNewsTest()
   {
       Address address=new Address();
       address.setId(18);
       List<News> indexByAddress = moduleMapper.getTopNews(address);
       indexByAddress.forEach(news -> System.out.println(news));
   }

  @Test
    public void getHotQuestionTest()
    {
        Address address=new Address();
        address.setId(18);
        Question question=moduleMapper.getIndexHotQuestion(address);
        System.out.println(question.toString());
    }
  @Test
    public void getHotExchangeTest()
    {
        Address address=new Address();
        address.setId(1);
        Exchange exchange=moduleMapper.getIndexHotExchange(address);
        System.out.println(exchange.toString());
    }

    @Autowired
    private TopicMapper topicMapper;
  @Test
    public void getTopicTest()
    {
        List<Topic> topics = topicMapper.getTopicList();
       topics.forEach(news -> System.out.println(news));
    }
  @Test
    public void getTopicNewsTest()
    {
        List<News> topics = topicMapper.getNewsByTopicId(1);
       topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    private AddressMapper addressMapper;
  @Test
    public void getAdressListTest()
    {
        List<Address> topics =addressMapper.getAddressList();
       topics.forEach(news -> System.out.println(news));
    }
    @Autowired
    private  NewsMapper newsMapper;
  @Test
    public void getNewsSearchTest()
    {
        final List<News> topics = newsMapper.getNewsBySearch("关于");
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    ExpertMapper expertMapper;
  @Test
    public void getExpertTest()
    {
        Integer a=null;
        Integer b=null;
        final List<Expert> topics = expertMapper.getAgricultureExpert(a,b);
        topics.forEach(news -> System.out.println(news));
    }
  @Test
    public void getExpertQuestionListTest()
    {

        List<ExpertQuestion> topics = expertMapper.getExpertQuestionList(1);
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    ExpertQuestionMapper expertQuestionMapper;
  @Test
    public void getExpertQuestionDetailTest()
    {

        List<ExpertQuestion> topics = expertQuestionMapper.expertQuestionDetail(1);
        topics.forEach(news -> System.out.println(news));
    }
  @Test
    public void getMyExpertQuestionListTest()
    {

        List<ExpertQuestion> topics = expertQuestionMapper.getMyExpertQuestionList(1);
        topics.forEach(news -> System.out.println(news));
    }
    @Autowired
    IndustrySystemMapper industrySystemMapper;
  @Test
    public void getIndustryExpertListTest()
    {

        List<ExpertGrade> topics = industrySystemMapper.getIndustryExpertList(2,5);
        topics.forEach(news -> System.out.println(news));
    }
    @Autowired
    PestMapper pestMapper;
  @Test
    public void searchPestTest()
    {
        String a=null;
        String b=null;
        String c=null;
        List<Pest> topics = pestMapper.searchPest(a,b,c);
        topics.forEach(news -> System.out.println(news));
    }
}
