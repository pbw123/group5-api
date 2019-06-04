package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.FeedbackServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Manager
@Api(tags = "6.反馈管理")
@RequestMapping(value = "/feedback")
public class FeedbackController {
    @Autowired
    private FeedbackServiceImp feedbackServiceImp;

    @ApiOperation(value = "所有反馈列表")
    @GetMapping(value = "getFeedbackList")
    public ResponseResult getFeedbackList(@RequestParam(defaultValue = "1") Integer currPage,
                                          @RequestParam(defaultValue = "10") Integer pageSize) {
        return feedbackServiceImp.getAllFeedback(currPage, pageSize);
    }

    @ApiOperation(value = "据id查询反馈信息")
    @GetMapping(value = "getFeedbackById/{id}")
    public ResponseResult getFeedbackById(@PathVariable Integer id) {
        return feedbackServiceImp.getFeedback(id);
    }

    @ApiOperation(value = "修改反馈")
    @PostMapping(value = "updateFeedback")
    public Integer updateFeedback(String content) {
        return feedbackServiceImp.updateFeedback(content);
    }

    @ApiOperation(value = "删除反馈")
    @GetMapping(value = "delFeedback/{id}")
    public Integer delFeedback(@PathVariable Integer id) {
        return feedbackServiceImp.removeFeedback(id);
    }

    @ApiOperation(value = "据内容搜索反馈")
    @PostMapping(value = "searchFeedbackList")
    public ResponseResult searchFeedbackList(@RequestParam(defaultValue = "1") Integer currPage,
                                             @RequestParam(defaultValue = "10") Integer pageSize,
                                             String content) {
        return feedbackServiceImp.searchFeedbackList(currPage, pageSize, content);
    }
}
