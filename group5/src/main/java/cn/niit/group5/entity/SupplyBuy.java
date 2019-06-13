package cn.niit.group5.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class SupplyBuy implements Serializable {
    private Integer id;

    private Integer userId;

    private String sort;

    private String title;

    private String content;

    private String unit;

    private Integer amount;

    private Integer price;

    private String enterprise;

    private Timestamp limitTime;

    private List imgs;

    public List getImgs() {
        return imgs;
    }

    public void setImgs(List imgs) {
        this.imgs = imgs;
    }

    public Timestamp getLimitTime() {
        return limitTime;
    }

    public void setLimitTime(Timestamp limitTime) {
        this.limitTime = limitTime;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    private String sellerName;

    private String sellerPhone;

    private Integer status;

    private Integer isSupplyBuy;

    private Timestamp createTime;

    private Integer isDelete;


   private  Integer currPage;

   private Integer pageSize;

private String time;
private String endTime;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

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

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort == null ? null : sort.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
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

    public String getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(String enterprise) {
        this.enterprise = enterprise == null ? null : enterprise.trim();
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



    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    @Override
    public String toString() {
        return "SupplyBuy{" +
                "id=" + id +
                ", userId=" + userId +
                ", sort='" + sort + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", unit='" + unit + '\'' +
                ", amount=" + amount +
                ", price=" + price +
                ", enterprise='" + enterprise + '\'' +
                ", limitTime=" + limitTime +
                ", sellerName='" + sellerName + '\'' +
                ", sellerPhone='" + sellerPhone + '\'' +
                ", status=" + status +
                ", isSupplyBuy=" + isSupplyBuy +
                ", createTime=" + createTime +
                ", isDelete=" + isDelete +
                ", currPage=" + currPage +
                ", pageSize=" + pageSize +
                ", time='" + time + '\'' +
                ", endTime='" + endTime + '\'' +
                '}';
    }
}