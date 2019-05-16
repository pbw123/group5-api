package cn.niit.group5.mapper;

import cn.niit.group5.entity.Feedback;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface FeedbackMapper {

    int insert(Feedback record);

}