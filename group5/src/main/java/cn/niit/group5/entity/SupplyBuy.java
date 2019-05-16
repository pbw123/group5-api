package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.Date;

public class SupplyBuy implements Serializable {
    private Integer id;

    private Integer userId;

    private String title;

    private Integer amount;

    private Integer price;

    private String sellerName;

    private String sellerPhone;

    private Integer status;

    private Integer isSupplyBuy;

    private Date limitTime;

    private Date createTime;

    private Integer isDelete;

    private String content;

    private String sort;

    private String unit;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName == null ? null : sellerName.trim();
    }

    public String getSellerPhone() {
        return sellerPhone;
    }

    public void setSellerPhone(String sellerPhone) {
        this.sellerPhone = sellerPhone == null ? null : sellerPhone.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsSupplyBuy() {
        return isSupplyBuy;
    }

    public void setIsSupplyBuy(Integer isSupplyBuy) {
        this.isSupplyBuy = isSupplyBuy;
    }

    public Date getLimitTime() {
        return limitTime;
    }

    public void setLimitTime(Date limitTime) {
        this.limitTime = limitTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort == null ? null : sort.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", userId=").append(userId);
        sb.append(", title=").append(title);
        sb.append(", amount=").append(amount);
        sb.append(", price=").append(price);
        sb.append(", sellerName=").append(sellerName);
        sb.append(", sellerPhone=").append(sellerPhone);
        sb.append(", status=").append(status);
        sb.append(", isSupplyBuy=").append(isSupplyBuy);
        sb.append(", limitTime=").append(limitTime);
        sb.append(", createTime=").append(createTime);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", content=").append(content);
        sb.append(", sort=").append(sort);
        sb.append(", unit=").append(unit);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}