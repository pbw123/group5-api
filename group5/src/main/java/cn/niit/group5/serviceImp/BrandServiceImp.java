package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Brand;
import cn.niit.group5.entity.Commodity;
import cn.niit.group5.entity.EnterpriseRecommend;
import cn.niit.group5.mapper.BrandMapper;
import cn.niit.group5.mapper.EnterpriseRecommendMapper;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import cn.niit.group5.util.UploadImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class BrandServiceImp {
    @Autowired
    private BrandMapper brandMapper;

    public ResponseResult getAllBrand(Integer currPage, Integer pageSize) {
        List<Brand> brands = brandMapper.selectAllBrand(currPage, pageSize);
        return ResponseResult.success(brands);
    }

    public ResponseResult getBrandByName(String name, Integer currPage, Integer pageSize) {
        Brand brand = new Brand();
        brand.setName(name);
        brand.setCurrPage(currPage);
        brand.setPageSize(pageSize);
        List<Brand> brands = brandMapper.selectByName(brand);
        return ResponseResult.success(brands);
    }

    public Integer delBrandSort(Integer id) {
        int i = brandMapper.delBrandById(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateBrand(Integer id, String name, String type) {
        Brand brand = new Brand();
        brand.setName(name);
        brand.setType(type);
        brand.setId(id);
        int i = brandMapper.updateBrand(brand);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer addBrand(String name, String type) {
        Brand brand = new Brand();
        brand.setName(name);
        brand.setType(type);
        int insert = brandMapper.insert(brand);
        if (insert == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    @Autowired
    private EnterpriseRecommendMapper enterpriseRecommendMapper;

    public ResponseResult getAllEnterprise(Integer currPage, Integer pageSize) {
        EnterpriseRecommend enterprise = new EnterpriseRecommend();
        enterprise.setCurrPage(currPage);
        enterprise.setPageSize(pageSize);
        List<EnterpriseRecommend> allEnterprise =
                enterpriseRecommendMapper.getAllEnterprise(enterprise);
        return ResponseResult.success(allEnterprise);
    }

    public ResponseResult searchEnterpriseBySort(Integer sort, Integer currPage, Integer pageSize) {
        EnterpriseRecommend recommend = new EnterpriseRecommend();
        recommend.setSort(sort);
        recommend.setCurrPage(currPage);
        recommend.setPageSize(pageSize);
        List<EnterpriseRecommend> recommends =
                enterpriseRecommendMapper.searchEnterpriseBySort(recommend);
        return ResponseResult.success(recommends);
    }

    public Integer removeEnterprise(Integer id) {
        int i = enterpriseRecommendMapper.delEnterprise(id);
        if (i == 1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer updateEnterprise(Integer sort, String name, Integer count, String phoneNumber,
                                    String profile, MultipartFile file) {
        EnterpriseRecommend recommend = new EnterpriseRecommend();
        recommend.setSort(sort);
        recommend.setEnterpriseName(name);
        recommend.setCount(count);
        recommend.setPhoneNumber(phoneNumber);
        recommend.setEnterpriseProfile(profile);
        if (file != null) {
            String s = UploadImg.ossUpload(file);
            recommend.setImgUrl(s);
        }
        int i = enterpriseRecommendMapper.updateEnterprise(recommend);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }


    public ResponseResult searchEnterpriseByName(String name,String phoneNumber,Integer currPage,
                                                 Integer pageSize)
    {
        EnterpriseRecommend recommend = new EnterpriseRecommend();
        recommend.setPhoneNumber(phoneNumber);
        recommend.setCurrPage(currPage);
        recommend.setPageSize(pageSize);
        recommend.setEnterpriseName(name);
        List<EnterpriseRecommend> lists =
                enterpriseRecommendMapper.searchEnterprise(recommend);
        return ResponseResult.success(lists);
    }

    public Integer addEnterprise(MultipartFile file,String name,String phoneNumber,Integer type,
                                 String profile)
    {
        EnterpriseRecommend recommend = new EnterpriseRecommend();
        if (file!=null)
        {
            String s = UploadImg.ossUpload(file);
            recommend.setImgUrl(s);
        }
        recommend.setEnterpriseName(name);
        recommend.setPhoneNumber(phoneNumber);
        recommend.setSort(type);
        recommend.setEnterpriseProfile(profile);
        int i = enterpriseRecommendMapper.addEnterprise(recommend);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getAllCommodity(Integer currPage,Integer pageSize)
    {
        Commodity commodity = new Commodity();
        commodity.setCurrPage(currPage);
        commodity.setPageSize(pageSize);
        List<Commodity> commodities = brandMapper.selectAllCommodity(commodity);
        return ResponseResult.success(commodities);
    }

    public Integer delCommodity(Integer id)
    {
        int i = brandMapper.delCommodity(id);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer changeCommodity(Integer id,String title,Integer sort,String source,
                                   String phoneNumber,
                                   Integer readNumber)
    {
        Commodity commodity = new Commodity();
        commodity.setTitle(title);
        commodity.setPhoneNumber(phoneNumber);
        commodity.setSource(source);
        commodity.setReadNumber(readNumber);
        commodity.setId(id);
        int i = brandMapper.updateCommodity(commodity);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer insertCommodity(String title,Integer sort,String source,
                                   String phoneNumber,
                                   Integer readNumber)
    {
        Commodity commodity = new Commodity();
        commodity.setTitle(title);
        commodity.setPhoneNumber(phoneNumber);
        commodity.setSource(source);
        commodity.setReadNumber(readNumber);
        int i = brandMapper.addCommodity(commodity);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult searchCommodity(String keyword,Integer currPage,Integer pageSize)
    {
        Commodity commodity = new Commodity();
        commodity.setKeyword(keyword);
        commodity.setCurrPage(currPage);
        commodity.setPageSize(pageSize);
        List<Commodity> commodities = brandMapper.searchCommodity(commodity);
        return  ResponseResult.success(commodities);
    }
}
