package cn.niit.group5.serviceImp;

import cn.niit.group5.mapper.TechnologySortMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TechnoServiceImp {
    @Autowired
    private TechnologySortMapper technologySortMapper;

    public ResponseResult addTechnoSort(String name, String icon) {
        int index = technologySortMapper.addSortTechno(name, icon);
        if (index == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }
}
