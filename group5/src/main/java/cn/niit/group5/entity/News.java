package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.Date;

public class News implements Serializable {
    private Integer id;

    private String title;

    private Integer addressId;

    private Date createTime;

    private String iconUrl;

    private Integer readNumber;

    private String source;

    private String author;

    private Integer technologyId;

    private Integer newsSortId;

    private Integer animalSortId;

    private Integer state;

    private Integer reviewStatus;

    private Integer isTop;

    private Integer isDelete;

    private String content;

    private Integer topicId;

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    private static final long serialVersionUID = 1L;

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

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getIconUrl() {
        return iconUrl;
    }

    public void setIconUrl(String iconUrl) {
        this.iconUrl = iconUrl == null ? null : iconUrl.trim();
    }

    public Integer getReadNumber() {
        return readNumber;
    }

    public void setReadNumber(Integer readNumber) {
        this.readNumber = readNumber;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Integer getTechnologyId() {
        return technologyId;
    }

    public void setTechnologyId(Integer technologyId) {
        this.technologyId = technologyId;
    }

    public Integer getNewsSortId() {
        return newsSortId;
    }

    public void setNewsSortId(Integer newsSortId) {
        this.newsSortId = newsSortId;
    }

    public Integer getAnimalSortId() {
        return animalSortId;
    }

    public void setAnimalSortId(Integer animalSortId) {
        this.animalSortId = animalSortId;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getReviewStatus() {
        return reviewStatus;
    }

    public void setReviewStatus(Integer reviewStatus) {
        this.reviewStatus = reviewStatus;
    }

    public Integer getIsTop() {
        return isTop;
    }

    public void setIsTop(Integer isTop) {
        this.isTop = isTop;
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", title=").append(title);
        sb.append(", addressId=").append(addressId);
        sb.append(", createTime=").append(createTime);
        sb.append(", iconUrl=").append(iconUrl);
        sb.append(", readNumber=").append(readNumber);
        sb.append(", source=").append(source);
        sb.append(", author=").append(author);
        sb.append(", technologyId=").append(technologyId);
        sb.append(", newsSortId=").append(newsSortId);
        sb.append(", animalSortId=").append(animalSortId);
        sb.append(", state=").append(state);
        sb.append(", reviewStatus=").append(reviewStatus);
        sb.append(", isTop=").append(isTop);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", content=").append(content);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}