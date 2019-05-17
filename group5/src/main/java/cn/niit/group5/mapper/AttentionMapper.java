package cn.niit.group5.mapper;


import cn.niit.group5.entity.Attention;
import cn.niit.group5.entity.Question;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;


@Mapper
@Component
public interface AttentionMapper {
  //关注一个提问
    void attentionQuestion(Attention attention);

  //我的关注列表
  List<Attention> getAttentionByUserId(int userId);
}