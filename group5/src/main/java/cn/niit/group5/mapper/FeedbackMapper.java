package cn.niit.group5.mapper;

import cn.niit.group5.entity.Feedback;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface FeedbackMapper {
    // 添加一条反馈记录
    int insert(Feedback record);

    //    获取所有反馈
    List<Feedback> getAllFeedBack(@Param("currPage") Integer currPage,
                                  @Param("pageSize") Integer pageSize);

    //    修改反馈内容
    int updateFeedback(Feedback feedback);

    //    据id获取反馈信息
    Feedback selectById(Integer id);

    //    删除反馈
    int delFeedback(Integer id);

    //    据内容搜索反馈
    List<Feedback> searchFeedback(Feedback feedback);

}