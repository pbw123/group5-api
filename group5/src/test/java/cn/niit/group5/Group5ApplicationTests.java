package cn.niit.group5;

import cn.niit.group5.entity.*;
import cn.niit.group5.mapper.*;
import cn.niit.group5.util.StringUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Timestamp;
import java.util.Date;
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
    public void indexTest() {
        List<Module> lists = moduleMapper.getIndexModule(1);
        for (Module list : lists) {
            System.out.println(list);
        }
    }

    @Autowired
    private ReplyMapper replyMapper;

    @Test
    public void getReplyMapperTest() {
        List<Reply> myReplys = replyMapper.getMyReplyById(1);
        myReplys.forEach((reply) -> System.out.println(reply + "===="));

    }

    @Test
    public void getModuleTest() {
        Module module = moduleMapper.getModuleById(1);
        System.out.println(module.getName() + "=====页面");
    }

    @Autowired
    private TechnologySortMapper technologySortMapper;

    @Test
    public void getNewsByTechnologySortIdTest() {
        List<News> news = technologySortMapper.getNewsBySortId(1);
        news.forEach(news1 -> System.out.println(news1));
    }

    @Test
    public void getNewsByAddress() {
        Address address = new Address();
        address.setId(18);
        List<News> indexByAddress = moduleMapper.getIndexDynamic(address);
        indexByAddress.forEach(news -> System.out.println(news));
    }

    @Test
    public void getTopNewsTest() {
        Address address = new Address();
        address.setId(18);
        List<News> indexByAddress = moduleMapper.getTopNews(address);
        indexByAddress.forEach(news -> System.out.println(news));
    }

    @Test
    public void getHotQuestionTest() {
        Address address = new Address();
        address.setId(18);
        Question question = moduleMapper.getIndexHotQuestion(address);
        System.out.println(question.toString());
    }

    @Test
    public void getHotExchangeTest() {
        Address address = new Address();
        address.setId(1);
        Exchange exchange = moduleMapper.getIndexHotExchange(address);
        System.out.println(exchange.toString());
    }

    @Autowired
    private TopicMapper topicMapper;

    @Test
    public void getTopicTest() {
        List<Topic> topics = topicMapper.getTopicList();
        topics.forEach(news -> System.out.println(news));
    }

    @Test
    public void getTopicNewsTest() {
        List<News> topics = topicMapper.getNewsByTopicId(1);
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    private AddressMapper addressMapper;

    @Test
    public void getAdressListTest() {
        List<Address> topics = addressMapper.getAddressList();
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    private NewsMapper newsMapper;

    @Test
    public void getNewsSearchTest() {
        final List<News> topics = newsMapper.getNewsBySearch("关于");
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    ExpertMapper expertMapper;

    @Test
    public void getExpertTest() {
        Integer a = null;
        Integer b = null;
        final List<Expert> topics = expertMapper.getAgricultureExpert(a, b);
        topics.forEach(news -> System.out.println(news));
    }

    @Test
    public void getExpertQuestionListTest() {

        List<ExpertQuestion> topics = expertMapper.getExpertQuestionList(1);
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    ExpertQuestionMapper expertQuestionMapper;

    @Test
    public void getExpertQuestionDetailTest() {

        ExpertQuestion topics = expertQuestionMapper.expertQuestionDetail(1);
        System.out.println(topics.toString());
    }

    @Test
    public void getMyExpertQuestionListTest() {

        List<ExpertQuestion> topics = expertQuestionMapper.getMyExpertQuestionList(1);
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    IndustrySystemMapper industrySystemMapper;

    @Test
    public void getIndustryExpertListTest() {

        List<ExpertGrade> topics = industrySystemMapper.getIndustryExpertList(2, 5);
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    PestMapper pestMapper;

    @Test
    public void searchPestTest() {
        String a = null;
        String b = null;
        String c = null;
        List<Pest> topics = pestMapper.searchPest(a, b, c);
        topics.forEach(news -> System.out.println(news));
    }

    @Autowired
    SeedMapper seedMapper;

    @Test
    public void searchSeedTest() {
        String a = null;
        String b = null;
        String c = null;
        String d = "米";
        String e = null;
        String f = null;
        Seed seed = new Seed();
        seed.setCropName(a);
        seed.setIsExit(b);
        seed.setIsTransgenic(c);
        seed.setKind(d);
        seed.setNumber(e);
        seed.setReviewTime(f);
        List<Seed> seeds = seedMapper.searchSeed(seed);
        seeds.forEach(news -> System.out.println(news));
    }

    @Test
    public void getExpertDetail() {
        Expert expertDetail = expertMapper.getExpertDetail(1);
        System.out.println(expertDetail.toString());
    }

    @Autowired
    QuestionMapper questionMapper;

    @Test
    public void getQuestionDetailTest() {
        Question questionDetail = questionMapper.getQuestionDetail(1);
        System.out.println(questionDetail.toString());
    }

    @Test
    public void getAllQuestionListTest()
    {
        List<Question> questionList = questionMapper.getQuestionList();
        questionList.forEach(question -> System.out.println(question));
    }
    @Test
    public void getUserByIdTest()
    {
        User user = questionMapper.getUserById(1);
        System.out.println(user.toString());
    }

    @Test
    public void getInsertQuestion()
    {
        Question question=new Question();
        question.setContent("先生何许人也");
        question.setUserId(1);
        question.setCreateTime(new Timestamp(System.currentTimeMillis()));
        questionMapper.insertQuestion(question);

    }
    @Autowired
    UserMapper userMapper;
    @Test
    public void setStatusTest()
    {
        int index = userMapper.setStatus(1, 1);
        System.out.println("成功禁用");
    }
    @Test
    public void addScoreTest()
    {
        Integer id=1;
        Integer number=null;
        if (number==null||number.equals(""))
            number=0;
        int index = userMapper.addScore(id,number);

        User user = questionMapper.getUserById(id);
        System.out.println("添加了" + number + "积分，目前的用户积分为：" + user.getScore());
    }

    @Test
    public  void getDateTest()
    {
        System.out.println(new Date()+"+++++++++++++++");
        String date = StringUtil.getDateString(new Date());
        User user = questionMapper.getUserById(1);
        Date regitsterTime = user.getRegitsterTime();
        System.out.println(regitsterTime+"++++++++++++=========");
        String dateString = StringUtil.getDateString(regitsterTime);
        user.setTime(dateString);

        System.out.println(date+"===========");
        System.out.println(user.getTime()+"__-----------");
        user.setRegitsterTime(new Timestamp(System.currentTimeMillis()));
        System.out.println(user.getRegitsterTime()+"kkkkkkkkkkkkkkkkk");
        String time = StringUtil.getDateString(user.getRegitsterTime());
        System.out.println(time+"哈哈=======");
    }

    @Autowired
    CollectionMapper collectionMapper;
    @Test
    public void getCollectionTest()
    {
        Integer userId=1;
        Integer questionId=1;
        Collection collection = collectionMapper.getCollectionById(userId, questionId);
        System.out.println(collection.toString());
    }
    @Test
    public void addCollectionTest()
    {
        Integer userId=1;
        Integer newsId=13;
        int index = collectionMapper.addNewsCollect(userId, newsId);
        System.out.println(index+"===========");
    }
    @Autowired
    ExchangeMapper exchangeMapper;
    @Test
    public void exchangeListTest()
    {
        Exchange exchangeDetailById = exchangeMapper.getExchangeDetailById(1);
        List<Reply> replies = exchangeDetailById.getReplies();
        for (Reply reply:replies)
        {
            reply.setTime(StringUtil.getDateString(reply.getReplyTime()));
        }
        replies.forEach(reply -> System.out.println(reply));
    }
}
