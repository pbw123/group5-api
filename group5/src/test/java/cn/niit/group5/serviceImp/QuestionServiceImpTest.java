package cn.niit.group5.serviceImp;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class QuestionServiceImpTest {
@Autowired
QuestionServiceImp questionServiceImp;
    @Test
    public void attentionOrNo() {
        questionServiceImp.attentionOrNo(1,1);
    }
}