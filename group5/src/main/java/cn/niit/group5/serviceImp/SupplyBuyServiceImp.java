package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Img;
import cn.niit.group5.entity.SupplyBuy;
import cn.niit.group5.entity.dto.PageDTO;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.mapper.SupplyBuyMapper;
import cn.niit.group5.util.*;
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
        if (id == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }

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
            return ResponseResult.error(StatusConst.ERROR,"返回空");
    }

    public ResponseResult seekDetail(Integer id) {
        if (id == null) {
            return ResponseResult.error(StatusConst.ERROR, MsgConst.ID_NULL);
        }
        SupplyBuy supplyBuy = supplyBuyMapper.getSeekDetail(id);
        if (supplyBuy == null) {
            return ResponseResult.error(StatusConst.ERROR, "返回空");
        }
        String time = StringUtil.getDateString(supplyBuy.getCreateTime());
        String endTime = StringUtil.getDateString(supplyBuy.getLimitTime());
        if (time != null) {
            supplyBuy.setTime(time);
        }
        if (endTime != null) {
            supplyBuy.setEndTime(endTime);
        }
        supplyBuy.setImgs(imgMapper.getBuyImgs(id));
        return ResponseResult.success(supplyBuy);
    }

    public int addSupply(Integer userId,
                         String sort, String title, String content, String unit, Integer amount,
                         Integer price,
                         String enterprise, String sellerName, String sellerPhone, String[] imgs) {
        if (userId == null) {
            return StatusConst.ERROR;
        }
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
        if (i == 1) {
            for (String image : imgs) {
                Img img = new Img();
                img.setBuyId(supplyBuy.getId());
                img.setImgUrl(image);
                imgMapper.insertBuyImg(img);
            }
            return StatusConst.SUCCESS;
        }
        return StatusConst.ERROR;
    }

    public ResponseResult getBySort(String sort) {
        List<SupplyBuy> supplyBuyList = supplyBuyMapper.getSupplyBySort(sort);
        if (supplyBuyList == null)
            return ResponseResult.success();
        else
            for (SupplyBuy supplyBuy : supplyBuyList) {

                if (supplyBuy.getCreateTime()!= null)
                    supplyBuy.setTime(StringUtil.getDateString(supplyBuy.getCreateTime()));
                if (supplyBuy.getLimitTime()!= null)
                    supplyBuy.setEndTime(StringUtil.getDateString(supplyBuy.getLimitTime()));
                supplyBuy.setImgs(imgMapper.getBuyImgs(supplyBuy.getId()));
            }
        return ResponseResult.success(supplyBuyList);
    }

    public ResponseResult addSeek(Integer userId,
                                  String sort, String title, String content, String unit,
                                  Integer amount, Integer price, String sellerName,
                                  String sellerPhone,
                                  String[] imgs) {
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
        if (i == 1) {
            if (imgs != null) {
                for (String image : imgs) {
                    Img img = new Img();
                    img.setBuyId(supplyBuy.getId());
                    img.setImgUrl(image);
                    imgMapper.insertBuyImg(img);
                }
            }
            return ResponseResult.success();
        }
        return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult buyList(Integer currPage, Integer pageSize) {
        Integer curr = StatusConst.CURRENTPAGE;
        Integer size = StatusConst.PAGESIZE;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        List<SupplyBuy> buyList = supplyBuyMapper.seekList();
        PageDTO page = PageUtil.page(curr, size, buyList);
        List<SupplyBuy> pageList = page.getList();
        for (SupplyBuy supplyBuy : pageList) {
            Timestamp createTime = supplyBuy.getCreateTime();
            Timestamp limitTime = supplyBuy.getLimitTime();
            if (createTime != null) {
                supplyBuy.setTime(StringUtil.getDateString(createTime));
            }
            if (limitTime != null) {
                supplyBuy.setEndTime(StringUtil.getDateString(limitTime));
            }
            supplyBuy.setImgs(imgMapper.getBuyImgs(supplyBuy.getId()));
        }
        return ResponseResult.succ(pageList, page.getSize());
    }

    @Autowired
    private ImgMapper imgMapper;

    public ResponseResult supplyList(Integer currPage, Integer pageSize) {
        Integer curr = StatusConst.CURRENTPAGE;
        Integer size = StatusConst.PAGESIZE;
        if (currPage != null) {
            curr = currPage;
        }
        if (pageSize != null) {
            size = pageSize;
        }
        List<SupplyBuy> supplyList = supplyBuyMapper.supplyList();
        PageDTO page = PageUtil.page(curr, size, supplyList);
        List<SupplyBuy> pageList = page.getList();
        for (SupplyBuy supplyBuy : pageList) {
            Timestamp createTime = supplyBuy.getCreateTime();
            Timestamp limitTime = supplyBuy.getLimitTime();
            if (createTime != null)
                supplyBuy.setTime(StringUtil.getDateString(createTime));
            if (limitTime != null)
                supplyBuy.setEndTime(StringUtil.getDateString(limitTime));

            supplyBuy.setImgs(imgMapper.getBuyImgs(supplyBuy.getId()));
        }
        return ResponseResult.succ(supplyList, page.getSize());
    }
}
