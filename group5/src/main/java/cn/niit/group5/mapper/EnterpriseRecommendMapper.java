package cn.niit.group5.mapper;

import cn.niit.group5.entity.EnterpriseRecommend;
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

    //后台-所有企业
    List<EnterpriseRecommend> getAllEnterprise(EnterpriseRecommend enterpriseRecommend);

    //    后台-据品牌分类查询企业
    List<EnterpriseRecommend> searchEnterpriseBySort(EnterpriseRecommend recommend);

    //    后台-删除企业
    int delEnterprise(Integer id);

    //    后台-修改企业
    int updateEnterprise(EnterpriseRecommend recommend);

    //据名称，联系方式搜索企业
    List<EnterpriseRecommend> searchEnterprise(EnterpriseRecommend recommend);

    //    添加企业
    int addEnterprise(EnterpriseRecommend recommend);

}