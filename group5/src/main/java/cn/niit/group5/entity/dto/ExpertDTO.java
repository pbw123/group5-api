package cn.niit.group5.entity.dto;

import cn.niit.group5.entity.Expert;
import cn.niit.group5.entity.ExpertQuestion;

import java.util.List;

public class ExpertDTO {
    private Expert expert;
    private List<ExpertQuestion>expertQuestions;

    public Expert getExpert() {
        return expert;
    }

    public void setExpert(Expert expert) {
        this.expert = expert;
    }

    public List<ExpertQuestion> getExpertQuestions() {
        return expertQuestions;
    }

    public void setExpertQuestions(List<ExpertQuestion> expertQuestions) {
        this.expertQuestions = expertQuestions;
    }
}
