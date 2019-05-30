package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Advertise;
import cn.niit.group5.mapper.AdvertiseMapper;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import cn.niit.group5.util.UploadImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;
import java.util.List;

@Service
public class AdvertiseServiceImp {
    @Autowired
    AdvertiseMapper advertiseMapper;
    public ResponseResult getAllAdvertise(Integer isOpen,Integer currPage,Integer pageSize)
    {
        Advertise advertise=new Advertise();
        advertise.setCurrPage(currPage-1);
        advertise.setPageSize(pageSize);
        advertise.setIsOpen(isOpen);
        List<Advertise> advertises = advertiseMapper.selectAll(advertise);
        return ResponseResult.success(advertises);
    }

    public Integer addAdvertiseIndex(String content, MultipartFile file)
    {
        Advertise advertise=new Advertise();
        advertise.setContent(content);
        advertise.setCreateTime(new Timestamp(System.currentTimeMillis()));
        if (file!=null)
        {
            String s = UploadImg.ossUpload(file);
            advertise.setImg(s);
        }
        int insert = advertiseMapper.insert(advertise);
        if (insert==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }
    public Integer addAdvertiseOpen(String title, MultipartFile file,String type,
                                    String endTime)
    {
        Advertise advertise=new Advertise();
        advertise.setContent(title);
        advertise.setCreateTime(new Timestamp(System.currentTimeMillis()));
        advertise.setEndTime(Timestamp.valueOf(endTime));
        advertise.setIsOpen(1);
        advertise.setType(type);
        if (file!=null)
        {
            String s = UploadImg.ossUpload(file);
            advertise.setImg(s);
        }
        int insert = advertiseMapper.insert(advertise);
        if (insert==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateAdvertise(String name,String content,MultipartFile file,Integer status,
                                   Integer id)
    {
        Advertise advertise=new Advertise();
        advertise.setId(id);
        advertise.setName(name);
        advertise.setContent(content);
        advertise.setStatus(status);
        if (file!=null)
        {
            String img = UploadImg.ossUpload(file);
            advertise.setImg(img);
        }
        int i = advertiseMapper.updateAdvertise(advertise);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult searchAdvertise(String type,@RequestParam(defaultValue = "1") Integer currPage,
           @RequestParam(defaultValue = "10") Integer pageSize)
    {
        Advertise advertise=new Advertise();
        advertise.setType(type);
        advertise.setCurrPage(currPage-1);
        advertise.setPageSize(pageSize);
        List<Advertise> advertises = advertiseMapper.searchAdvertise(advertise);
        return ResponseResult.success(advertises);
    }
    public ResponseResult searchAdvertiseOpen(String title,
                                              @RequestParam(defaultValue =  "1") Integer currPage,
            @RequestParam(defaultValue= "10") Integer pageSize)
    {
        Advertise advertise=new Advertise();
        advertise.setCurrPage(currPage-1);
        advertise.setPageSize(pageSize);
        advertise.setName(title);
        List<Advertise> advertises = advertiseMapper.searchAdvertise(advertise);
        return ResponseResult.success(advertises);
    }
}
