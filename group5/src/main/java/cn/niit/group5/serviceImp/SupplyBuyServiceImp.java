package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.SupplyBuy;
import cn.niit.group5.mapper.SupplyBuyMapper;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupplyBuyServiceImp {
    @Autowired
    private SupplyBuyMapper supplyBuyMapper;
    public ResponseResult getAllSupplyOrBuyList(Integer state, Integer currPage, Integer pageSize)
    {
        SupplyBuy supplyBuy = new SupplyBuy();
        supplyBuy.setIsSupplyBuy(state);
        supplyBuy.setCurrPage(currPage);
        supplyBuy.setPageSize(pageSize);
        List<SupplyBuy> list = supplyBuyMapper.getAllSupplyOrBuyList(supplyBuy);
        return  ResponseResult.success(list);
    }

    public Integer delSupplyOrBuy(Integer id)
    {
        int i = supplyBuyMapper.delSupplyOrBuy(id);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }
}
