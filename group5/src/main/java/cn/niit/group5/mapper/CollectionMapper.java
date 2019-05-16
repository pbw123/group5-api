package cn.niit.group5.mapper;

import cn.niit.group5.entity.Collection;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface CollectionMapper {
    //收藏问答
    void collectQuestion(Collection collection);
    //收藏交流
    void collectExchange(Collection collection);
}