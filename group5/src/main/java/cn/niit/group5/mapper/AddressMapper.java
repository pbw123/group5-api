package cn.niit.group5.mapper;

import cn.niit.group5.entity.Address;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface AddressMapper {
    @Select("select * from t_address")
    List<Address> getAddressList();

}