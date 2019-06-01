package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.Date;

public class Log implements Serializable {
    private Integer id;

    private Integer userId;

    private Integer typesId;

    private String title;

    private String reportAddress;

    private Date reportTime;

    private Byte isDelete;

    private String content;

    private String imgUrl;

    private String people;

    public String getPeople() {
        return people;
    }

    public void setPeople(String people) {
        this.people = people;
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

    public Integer getTypesId() {
        return typesId;
    }

    public void setTypesId(Integer typesId) {
        this.typesId = typesId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getReportAddress() {
        return reportAddress;
    }

    public void setReportAddress(String reportAddress) {
        this.reportAddress = reportAddress == null ? null : reportAddress.trim();
    }

    public Date getReportTime() {
        return reportTime;
    }

    public void setReportTime(Date reportTime) {
        this.reportTime = reportTime;
    }

    public Byte getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Byte isDelete) {
        this.isDelete = isDelete;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
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
        sb.append(", userId=").append(userId);
        sb.append(", typesId=").append(typesId);
        sb.append(", title=").append(title);
        sb.append(", reportAddress=").append(reportAddress);
        sb.append(", reportTime=").append(reportTime);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", content=").append(content);
        sb.append(", imgUrl=").append(imgUrl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}