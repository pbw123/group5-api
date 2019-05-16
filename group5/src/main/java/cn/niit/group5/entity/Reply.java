package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.Date;

public class Reply implements Serializable {
    private Integer id;


    private String content;
    private Integer userId;

    private Integer questionId;

    private Byte exchangeId;

    private Integer like;

    private Byte isDelete;

    private User user;

    private Integer isExchangeReply;

    public Integer getIsExchangeReply() {
        return isExchangeReply;
    }

    public void setIsExchangeReply(Integer isExchangeReply) {
        this.isExchangeReply = isExchangeReply;
    }

    public Date getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(Date replyTime) {
        this.replyTime = replyTime;
    }

    private Date replyTime;

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Byte getExchangeId() {
        return exchangeId;
    }

    public void setExchangeId(Byte exchangeId) {
        this.exchangeId = exchangeId;
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
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", content=").append(content);
        sb.append(", userId=").append(userId);
        sb.append(", questionId=").append(questionId);
        sb.append(", exchangeId=").append(exchangeId);
        sb.append(", like=").append(like);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}