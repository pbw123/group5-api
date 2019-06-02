package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Version;
import cn.niit.group5.mapper.VersionMapper;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VersionServiceImp {

    @Autowired
    private VersionMapper versionMapper;
    public ResponseResult getAllVersion()
    {
        List<Version> versions = versionMapper.selectAll();
        return ResponseResult.success(versions);
    }

    public ResponseResult getVersionById(Integer id)
    {
        Version version = versionMapper.selectById(id);
        return ResponseResult.success(version);
    }

    public Integer updateVersion(Integer id,String type,String current,String max,String min,
                                 String address,String description)
    {
        Version version = new Version();
        version.setId(id);
        version.setAddress(description);
        version.setMax(max);
        version.setMin(min);
        version.setType(type);
        version.setAddress(address);
        version.setCurrent(current);
        int i = versionMapper.updateById(version);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }
}
