package cn.niit.group5.controller;

import cn.niit.group5.mapper.BasicTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class QuestionControllerTest extends BasicTest {
@Autowired
QuestionController questionController;
    @Test
    public void attentionQuestion() {
        questionController.attentionQuestion(1,1);
    }
}