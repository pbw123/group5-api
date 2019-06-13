package cn.niit.group5.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Exchange implements Serializable {
    private Integer id;

    private Integer userId;

    private String content;

    private Timestamp createTime;

    private String time;

    private Integer like;

    private Byte isDelete;

    private User user;

    private List imgs;

    private List<Reply> replies;

    private int replyAmount;

    private String img;

//    private List image;

    private Integer status;
    private Integer collectNumber;
    private Integer isLike;

    private String address;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getIsLike() {
        return isLike;
    }

    public void setIsLike(Integer isLike) {
        this.isLike = isLike;
    }

    public Integer getCollectNumber() {
        return collectNumber;
    }

    public void setCollectNumber(Integer collectNumber) {
        this.collectNumber = collectNumber;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public List getImgs() {
        return imgs;
    }

    public void setImgs(List imgs) {
        this.imgs = imgs;
    }

    public int getReplyAmount() {
        return replyAmount;
    }

    public void setReplyAmount(int replyAmount) {
        this.replyAmount = replyAmount;
    }

    public List<Reply> getReplies() {
        return replies;
    }

    public void setReplies(List<Reply> replies) {
        this.replies = replies;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Integer getLike() {
        return like;
    }

    public void setLike(Integer like) {
        this.like = like;
    }

    public Byte getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Byte isDelete) {
        this.isDelete = isDelete;
    }

    @Override
    public String toString() {
        return "Exchange{" +
                "id=" + id +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                ", time='" + time + '\'' +
                ", like=" + like +
                ", isDelete=" + isDelete +
                ", user=" + user +
                ", imgs=" + imgs +
                ", replies=" + replies +
                ", replyAmount=" + replyAmount +
                ", img='" + img + '\'' +
                ", status=" + status +
                ", collectNumber=" + collectNumber +
                ", isLike=" + isLike +
                '}';
    }
}