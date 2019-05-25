package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.List;

public class Commodity implements Serializable {
    private Integer id;

    private String title;

    private Integer sortId;

    private String source;

    private Integer readNumber;

    private Integer phonenumber;

    private Integer isDelete;

    private String detail;

    private List<Commodity> commodities;



    private List<EnterpriseRecommend> enterpriseRecommends;

    private static final long serialVersionUID = 1L;
    public List<Commodity> getCommodities() {
        return commodities;
    }

    public void setCommodities(List<Commodity> commodities) {
        this.commodities = commodities;
    }

    public List<EnterpriseRecommend> getEnterpriseRecommends() {
        return enterpriseRecommends;
    }

    public void setEnterpriseRecommends(List<EnterpriseRecommend> enterpriseRecommends) {
        this.enterpriseRecommends = enterpriseRecommends;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getSortId() {
        return sortId;
    }

    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public Integer getReadNumber() {
        return readNumber;
    }

    public void setReadNumber(Integer readNumber) {
        this.readNumber = readNumber;
    }

    public Integer getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(Integer phonenumber) {
        this.phonenumber = phonenumber;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", title=").append(title);
        sb.append(", sortId=").append(sortId);
        sb.append(", source=").append(source);
        sb.append(", readNumber=").append(readNumber);
        sb.append(", phonenumber=").append(phonenumber);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", detail=").append(detail);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}