package cn.niit.group5.serviceImp;

import cn.niit.group5.mapper.BasicTest;
import cn.niit.group5.util.ResponseResult;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class QuestionServiceImpTest extends BasicTest {
@Autowired
QuestionServiceImp questionServiceImp;
    @Test
    public void attentionOrNo() {
//        questionServiceImp.attentionOrNo(1,1);
    }

    @Test
    public void attenExpertQuestionTest()
    {
        ResponseResult responseResult = questionServiceImp.attentionExpertOrNo(1, 1);
        ResponseResult responseResult2 = questionServiceImp.attentionExpertOrNo(1, 9);
        System.out.println(responseResult.toString());
        System.out.println(responseResult2.toString());
    }
}