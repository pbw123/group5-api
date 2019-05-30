package cn.niit.group5.serviceImp;

import cn.niit.group5.mapper.ExpertMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExpertServiceImp {
    @Autowired
    private ExpertMapper expertMapper;
    public ResponseResult delExpertQeustion(Integer id)
    {
        int i = expertMapper.delExpertQuestion(id);
        if (i==1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult updateExpertQuestion(String content,Integer id)
    {
        int i = expertMapper.updateExpertQuestion(content,id);
        if (i==1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR,MsgConst.FAIL);
    }
}
