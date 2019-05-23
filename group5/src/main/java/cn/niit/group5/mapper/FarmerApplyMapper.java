package cn.niit.group5.mapper;

import cn.niit.group5.entity.FarmerApply;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface FarmerApplyMapper{
    //添加申报信息
    void insertApplyMessage(FarmerApply farmerApply);
}