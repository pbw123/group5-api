package cn.niit.group5.mapper;

import cn.niit.group5.entity.EnterpriseRecommend;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface EnterpriseRecommendMapper {
//通过品牌农资分类sort遍历出企业推荐
    List<EnterpriseRecommend> getEnterpriseRecommendBySort(Integer sort);
//通过企业id获取企业详情
    EnterpriseRecommend getEnterpriseRecommendById(Integer id);
}