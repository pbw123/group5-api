package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.SupplyBuy;
import cn.niit.group5.mapper.SupplyBuyMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import cn.niit.group5.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;

@Service
public class SupplyBuyServiceImp {
    @Autowired
    private SupplyBuyMapper supplyBuyMapper;

    public ResponseResult getAllSupplyOrBuyList(Integer state, Integer currPage, Integer pageSize) {
        SupplyBuy supplyBuy = new SupplyBuy();
        supplyBuy.setIsSupplyBuy(state);
        supplyBuy.setCurrPage(currPage);
        supplyBuy.setPageSize(pageSize);
        List<SupplyBuy> list = supplyBuyMapper.getAllSupplyOrBuyList(supplyBuy);
        return ResponseResult.success(list);
    }

    public Integer delSupplyOrBuy(Integer id) {
        int i = supplyBuyMapper.delSupplyOrBuy(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getDetail(Integer id) {
        SupplyBuy supplyDetail = supplyBuyMapper.getSupplyDetail(id);
        if (supplyDetail != null) {
            String time = StringUtil.getDateString(supplyDetail.getCreateTime());
            if (time != null)
                supplyDetail.setTime(time);
            String endTime = StringUtil.getDateString(supplyDetail.getLimitTime());
            if (endTime != null)
                supplyDetail.setEndTime(endTime);
            return ResponseResult.success(supplyDetail);
        } else
            return ResponseResult.success();
    }

    public ResponseResult seekDetail(Integer id) {
        SupplyBuy supplyBuy = supplyBuyMapper.getSeekDetail(id);
        String time = StringUtil.getDateString(supplyBuy.getCreateTime());
        String endTime = StringUtil.getDateString(supplyBuy.getLimitTime());
        if (time != null) {
            supplyBuy.setTime(time);
        }
        if (endTime != null) {
            supplyBuy.setEndTime(endTime);
        }
        return ResponseResult.success(supplyBuy);
    }

    public int addSupply(int userId,
                        String sort, String title, String content, String unit, int amount,
                        int price,
                        String enterprise, String sellerName, String sellerPhone) {
        SupplyBuy supplyBuy = new SupplyBuy();
        supplyBuy.setUserId(userId);
        supplyBuy.setSort(sort);
        supplyBuy.setTitle(title);
        supplyBuy.setContent(content);
        supplyBuy.setUnit(unit);
        supplyBuy.setAmount(amount);
        supplyBuy.setPrice(price);
        supplyBuy.setEnterprise(enterprise);
        supplyBuy.setSellerName(sellerName);
        supplyBuy.setSellerPhone(sellerPhone);
        supplyBuy.setIsSupplyBuy(0);
        supplyBuy.setCreateTime(new Timestamp(System.currentTimeMillis()));
        int i = supplyBuyMapper.insertSupply(supplyBuy);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getBySort(String sort) {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.getSupplyBySort(sort);
        if (supplyBuyList == null)
            return ResponseResult.success();
        else
            for (SupplyBuy supplyBuy : supplyBuyList) {
                String time = StringUtil.getDateString(supplyBuy.getCreateTime());
                if (time != null)
                    supplyBuy.setTime(time);
                String endTime = StringUtil.getDateString(supplyBuy.getLimitTime());
                if (endTime != null)
                    supplyBuy.setEndTime(endTime);
            }
        return ResponseResult.success(supplyBuyList);
    }

    public ResponseResult addSeek(int userId,
                                  String sort, String title, String content, String unit,
                                  int amount, int price,
                                  String sellerName, String sellerPhone) {
        SupplyBuy supplyBuy = new SupplyBuy();
        supplyBuy.setUserId(userId);
        supplyBuy.setSort(sort);
        supplyBuy.setTitle(title);
        supplyBuy.setContent(content);
        supplyBuy.setUnit(unit);
        supplyBuy.setAmount(amount);
        supplyBuy.setPrice(price);
        supplyBuy.setSellerName(sellerName);
        supplyBuy.setSellerPhone(sellerPhone);
        supplyBuy.setIsSupplyBuy(1);
        supplyBuy.setCreateTime(new Timestamp(System.currentTimeMillis()));
        int i = supplyBuyMapper.insertSeek(supplyBuy);
        if (i == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult buyList() {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.seekList();
        if (supplyBuyList != null) {
            for (SupplyBuy supplyBuy : supplyBuyList) {
                String time = StringUtil.getDateString(supplyBuy.getCreateTime());
                if (time != null)
                    supplyBuy.setTime(time);
                String endTime = StringUtil.getDateString(supplyBuy.getLimitTime());
                if (endTime != null)
                    supplyBuy.setEndTime(endTime);
            }
            return ResponseResult.success(supplyBuyList);
        }
        else {
            return ResponseResult.success();
        }
    }

    public ResponseResult supplyList() {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.supplyList();
        for (SupplyBuy supplyBuy : supplyBuyList) {
            String time = StringUtil.getDateString(supplyBuy.getCreateTime());
            if (time != null)
                supplyBuy.setTime(time);
            String endTime = StringUtil.getDateString(supplyBuy.getLimitTime());
            if (endTime != null)
                supplyBuy.setEndTime(endTime);
        }
        supplyBuyList.forEach(supplyBuy -> System.out.println(supplyBuy));
        return ResponseResult.success(supplyBuyList);
    }
}
