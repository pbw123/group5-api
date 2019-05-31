package cn.niit.group5.entity;

import java.io.Serializable;

public class EnterpriseRecommend implements Serializable {
    private Integer id;

    private Integer sort;

    private String enterpriseName;

    private String phoneNumber;

    private Integer isDelete;

    private String enterpriseProfile;

    private String imgUrl;

    private Integer count;

    private Integer currPage;

    private Integer pageSize;

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

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getEnterpriseName() {
        return enterpriseName;
    }

    public void setEnterpriseName(String enterpriseName) {
        this.enterpriseName = enterpriseName == null ? null : enterpriseName.trim();
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public String getEnterpriseProfile() {
        return enterpriseProfile;
    }

    public void setEnterpriseProfile(String enterpriseProfile) {
        this.enterpriseProfile = enterpriseProfile == null ? null : enterpriseProfile.trim();
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl == null ? null : imgUrl.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", sort=").append(sort);
        sb.append(", enterpriseName=").append(enterpriseName);
        sb.append(", phoneNumber=").append(phoneNumber);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", enterpriseProfile=").append(enterpriseProfile);
        sb.append(", imgUrl=").append(imgUrl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}