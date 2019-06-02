package cn.niit.group5.entity;

import java.io.Serializable;

public class Expert implements Serializable {
    private Integer id;

    private String expertName;

    private String unitName;

    private String email;

    private String profession;

    private String resume;

    private Integer sysSort;

    private Integer expertSort;

    private String jobTitle;

    private Integer checkAll;

    private String phoneNumber;

    private Integer score;

    private Integer isDelete;

    private Integer state;

    private String grade;

    private  String sort;

   private TechnologySort technologySort;

   private String headImg;

   private String sortName;

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public TechnologySort getTechnologySort() {
        return technologySort;
    }

    public void setTechnologySort(TechnologySort technologySort) {
        this.technologySort = technologySort;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
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

    public Integer getSysSort() {
        return sysSort;
    }

    public void setSysSort(Integer sysSort) {
        this.sysSort = sysSort;
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
        sb.append(", sysSort=").append(sysSort);
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