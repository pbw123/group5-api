package cn.niit.group5.entity;

import java.io.Serializable;

public class Expert implements Serializable {
    private Integer id;

    private String expertName;

    private String unitName;

    private String email;

    private String profession;

    private String resume;

    private Integer expertGrade;

    private Integer expertSort;

    private String jobTitle;

    private Integer checkAll;

    private Integer phoneNumber;

    private Integer score;

    private Integer isDelete;

    private Integer state;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExpertName() {
        return expertName;
    }

    public void setExpertName(String expertName) {
        this.expertName = expertName == null ? null : expertName.trim();
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName == null ? null : unitName.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession == null ? null : profession.trim();
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume == null ? null : resume.trim();
    }

    public Integer getExpertGrade() {
        return expertGrade;
    }

    public void setExpertGrade(Integer expertGrade) {
        this.expertGrade = expertGrade;
    }

    public Integer getExpertSort() {
        return expertSort;
    }

    public void setExpertSort(Integer expertSort) {
        this.expertSort = expertSort;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle == null ? null : jobTitle.trim();
    }

    public Integer getCheckAll() {
        return checkAll;
    }

    public void setCheckAll(Integer checkAll) {
        this.checkAll = checkAll;
    }

    public Integer getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Integer phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", expertName=").append(expertName);
        sb.append(", unitName=").append(unitName);
        sb.append(", email=").append(email);
        sb.append(", profession=").append(profession);
        sb.append(", resume=").append(resume);
        sb.append(", expertGrade=").append(expertGrade);
        sb.append(", expertSort=").append(expertSort);
        sb.append(", jobTitle=").append(jobTitle);
        sb.append(", checkAll=").append(checkAll);
        sb.append(", phoneNumber=").append(phoneNumber);
        sb.append(", score=").append(score);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", state=").append(state);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}