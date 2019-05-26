package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.ExpertGrade;
import cn.niit.group5.mapper.IndustrySystemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndustryServerImp {
    @Autowired
  private IndustrySystemMapper industrySystemMapper;
//    首席专家
    public List<ExpertGrade>getChiefExpertList(Integer sysSortId)
    {
      return industrySystemMapper.getIndustryExpertList(sysSortId, 4);
    }
//    岗位专家
    public List<ExpertGrade>getPostExpertList(Integer sysSortId)
    {
      return industrySystemMapper.getIndustryExpertList(sysSortId, 5);
    }
//    基地主任
    public List<ExpertGrade>getBasicExpertList(Integer sysSortId)
    {
      return industrySystemMapper.getIndustryExpertList(sysSortId, 6);
    }
}
