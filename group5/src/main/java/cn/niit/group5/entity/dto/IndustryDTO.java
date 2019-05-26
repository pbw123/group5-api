package cn.niit.group5.entity.dto;

import cn.niit.group5.entity.ExpertGrade;

import java.util.List;

public class IndustryDTO {

  List<ExpertGrade> chiefExpertList;
    List<ExpertGrade> postExpertList;
    List<ExpertGrade> basicExpertList;

    public List<ExpertGrade> getChiefExpertList() {
        return chiefExpertList;
    }

    public void setChiefExpertList(List<ExpertGrade> chiefExpertList) {
        this.chiefExpertList = chiefExpertList;
    }

    public List<ExpertGrade> getPostExpertList() {
        return postExpertList;
    }

    public void setPostExpertList(List<ExpertGrade> postExpertList) {
        this.postExpertList = postExpertList;
    }

    public List<ExpertGrade> getBasicExpertList() {
        return basicExpertList;
    }

    public void setBasicExpertList(List<ExpertGrade> basicExpertList) {
        this.basicExpertList = basicExpertList;
    }
}
