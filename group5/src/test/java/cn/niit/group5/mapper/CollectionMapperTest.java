package cn.niit.group5.mapper;

import cn.niit.group5.entity.Collection;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;

public class CollectionMapperTest extends BasicTest {
    @Autowired
    CollectionMapper collectionMapper;

    @Test
    public void getCollectionTest() {
        Integer userId = 1;
        String column = "question_id";
        Integer newsId = 2;
        Collection collection = collectionMapper.getCollectionById(userId, column, newsId);
        if (collection == null)
            System.out.println("空指针异常");
        else
            System.out.println(collection.toString());
    }

    @Test
    public void addCollectionTest() {
        Integer userId = 1;
        String column = "question_id";
        Integer newsId = 22;
        int i = collectionMapper.addNewsCollect(userId, column, newsId,new Timestamp(System.currentTimeMillis()));
        if (i != 1)
            System.out.println("失败++++++++++++++");
        else
            System.out.println(i);
    }

    @Test
    public void getExchangeNumberTest() {
//        String column = "exchange_id";
        String column = "question_id";
        Integer id = 1;
int number = collectionMapper.getExchangeNumber(column, id);
//        lists.forEach(list-> System.out.println(list.toString()));
        System.out.println(number+"+++++++++");
    }
}