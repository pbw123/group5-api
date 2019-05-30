package cn.niit.group5.mapper;

import cn.niit.group5.entity.Advertise;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface AdvertiseMapper {
    //    添加广告
    int insert(Advertise record);

    //获取所有广告
    List<Advertise> selectAll(Advertise advertise);

    //编辑广告
    int updateAdvertise(Advertise advertise);

    //    搜索广告首页
    @Select(" SELECT * FROM t_advertise WHERE type LIKE concat('%',#{type},'%') and " +
            "is_delete=0 and is_open=0 limit #{currPage},#{pageSize}")
    List<Advertise> searchAdvertise(Advertise advertise);
    //    搜索广告首页
    @Select(" SELECT * FROM t_advertise WHERE name LIKE concat('%',#{name},'%') and " +
            "is_delete=0 and is_open=1 limit #{currPage},#{pageSize}")
    List<Advertise> searchAdvertiseOpen(Advertise advertise);
}