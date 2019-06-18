package cn.niit.group5.entity;

import java.io.Serializable;
import java.sql.Timestamp;

public class Reply implements Serializable {
    private Integer id;


    private String content;
    private Integer userId;

    private Integer questionId;

    private Integer exchangeId;

    private Integer like;

    private Byte isDelete;

    private User user;

    private Question question;

    private Integer isLike;

    public Integer getIsLike() {
        return isLike;
    }

    public void setIsLike(Integer isLike) {
        this.isLike = isLike;
    }

    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getHeadUrl() {
        return headUrl;
    }

    public void setHeadUrl(String headUrl) {
        this.headUrl = headUrl;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    private String headUrl;

    private String userAddress;

    private String identity;

    private Timestamp replyTime;

   private String time;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    private Integer isExchangeReply;

    public Integer getIsExchangeReply() {
        return isExchangeReply;
    }

    public void setIsExchangeReply(Integer isExchangeReply) {
        this.isExchangeReply = isExchangeReply;
    }

    public Timestamp getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(Timestamp replyTime) {
        this.replyTime = replyTime;
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

    public Integer getExchangeId() {
        return exchangeId;
    }

    public void setExchangeId(Integer exchangeId) {
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
        return "Reply{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", userId=" + userId +
                ", questionId=" + questionId +
                ", exchangeId=" + exchangeId +
                ", like=" + like +
                ", isDelete=" + isDelete +
                ", user=" + user +
                ", question=" + question +
                ", userName='" + userName + '\'' +
                ", headUrl='" + headUrl + '\'' +
                ", userAddress='" + userAddress + '\'' +
                ", identity='" + identity + '\'' +
                ", replyTime=" + replyTime +
                ", time='" + time + '\'' +
                ", isExchangeReply=" + isExchangeReply +
                '}';
    }
}