package cn.niit.group5.entity;

import java.io.Serializable;

public class ExpertGrade implements Serializable {
    private Integer id;

    private Integer expertId;

    private Integer gradeId;

    private String headImg;

    private String resume;

    private String expertName;

    private String grade;

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public String getExpertName() {
        return expertName;
    }

    public void setExpertName(String expertName) {
        this.expertName = expertName;
    }

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getExpertId() {
        return expertId;
    }

    public void setExpertId(Integer expertId) {
        this.expertId = expertId;
    }

    public Integer getGradeId() {
        return gradeId;
    }

    public void setGradeId(Integer gradeId) {
        this.gradeId = gradeId;
    }

    @Override
    public String toString() {
        return "ExpertGrade{" +
                "id=" + id +
                ", expertId=" + expertId +
                ", gradeId=" + gradeId +
                ", headImg='" + headImg + '\'' +
                ", resume='" + resume + '\'' +
                ", expertName='" + expertName + '\'' +
                ", grade='" + grade + '\'' +
                '}';
    }
}