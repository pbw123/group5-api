package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.List;

public class Attention implements Serializable {
    private Integer id;

    private Integer userId;

    private Integer questionId;

    private Integer status;

    private Question question;

    private String msg;

    private Integer expertQuestionId;
    private ExpertQuestion expertQuestion;

    public ExpertQuestion getExpertQuestion() {
        return expertQuestion;
    }

    public void setExpertQuestion(ExpertQuestion expertQuestion) {
        this.expertQuestion = expertQuestion;
    }

    public Integer getExpertQuestionId() {
        return expertQuestionId;
    }

    public void setExpertQuestionId(Integer expertQuestionId) {
        this.expertQuestionId = expertQuestionId;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }

    private List<Question> questions;

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

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", userId=").append(userId);
        sb.append(", questionId=").append(questionId);
        sb.append(", status=").append(status);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}