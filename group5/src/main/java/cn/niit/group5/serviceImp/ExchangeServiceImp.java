package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Question;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;

@Service
public class ExchangeServiceImp {

    @Autowired
private  QuestionMapper questionMapper;
    public ResponseResult updateQuestion(String content, String createTime)
    {
        Question question=new Question();
        question.setCreateTime(Timestamp.valueOf(createTime));
        int i = questionMapper.updateQuestion(question);
        if (i==1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

}
