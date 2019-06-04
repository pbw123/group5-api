package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Feedback;
import cn.niit.group5.mapper.FeedbackMapper;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedbackServiceImp {

    @Autowired
    private FeedbackMapper feedbackMapper;

    public ResponseResult getAllFeedback(Integer currPage, Integer pageSize) {
        Integer index=(currPage-1)*pageSize;
        List<Feedback> allFeedBack = feedbackMapper.getAllFeedBack(index, pageSize);
        return ResponseResult.success(allFeedBack);
    }

    public Integer updateFeedback(String content) {
        Feedback feedback = new Feedback();
        feedback.setContent(content);
        int i = feedbackMapper.updateFeedback(feedback);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getFeedback(Integer id) {
        if (id == null) {
            return ResponseResult.error(StatusConst.ERROR, "参数不能为空");
        } else {
            Feedback feedback = feedbackMapper.selectById(id);
            if (feedback == null) {
                return ResponseResult.error(StatusConst.ERROR, "没有这个对象");
            } else {
                return ResponseResult.success(feedback);
            }

        }
    }

    public Integer removeFeedback(Integer id)
    {
        int i = feedbackMapper.delFeedback(id);
        if(i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult searchFeedbackList(Integer currPage, Integer pageSize,String content)
    {
        Feedback feedback = new Feedback();
        feedback.setCurrPage(currPage);
        feedback.setPageSize(pageSize);
        feedback.setContent(content);
        List<Feedback> feedbacks = feedbackMapper.searchFeedback(feedback);
        return ResponseResult.success(feedbacks);
    }
}
