package cn.niit.group5.controller;


import cn.niit.group5.entity.Img;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.util.Client;
import cn.niit.group5.util.ResponseResult;
import com.alibaba.fastjson.JSONArray;
import com.aliyun.oss.OSSClient;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@RestController
@Api(tags = "A.上传图片")
@RequestMapping(value = "/api")
@Client
public class InsertImgsController {

   @Autowired
    ImgMapper imgMapper;

    @ApiOperation(value = "图片上传至阿里云OSS，返回对象")
    @PostMapping(value = "/img/insetImg")
        public ResponseResult ossUpload(MultipartFile file) {
    String endpoint = "https://oss-cn-shanghai.aliyuncs.com";
    String accessKeyId = "LTAI4G75ppcvSMeFMhpb9Nr7";
    String accessKeySecret = "DbxyqujUN2d37ivs7oAR6Nk0J1aCyW";
    String bucketName = "save-pan";
    String filedir = "img/";
    //uuid生成主文件名
    String prefix = UUID.randomUUID().toString();
    String prefix2=prefix+".jpg";
    File tempFile = null;
    try {
        //创建临时文件
        tempFile = File.createTempFile(prefix2, prefix2);
        // MultipartFile to File
        file.transferTo(tempFile);
    } catch (IOException e) {
        e.printStackTrace();
    }
    OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
    ossClient.putObject(bucketName, filedir + prefix2, tempFile);
    Date expiration = new Date(new Date().getTime() + 3600l * 1000 * 24 * 365 * 10);
    // 生成URL
    URL url = ossClient.generatePresignedUrl(bucketName, filedir + prefix2, expiration);
    ossClient.shutdown();
        String str = url.toString();
//        截取
        String substring = str.substring(0, str.indexOf("?Expires="));
//        替换
        String s = substring.replace("save-pan.oss-cn-shanghai.aliyuncs.com", "img2.panbingwen.cn");
        return ResponseResult.success(s);
}
    @ApiOperation(value = "图片上传至阿里云OSS，返回图片地址")
    @PostMapping(value = "/img/addImg")
        public String ossUploadImg(MultipartFile file) {
    String endpoint = "http://oss-cn-shanghai.aliyuncs.com";
    String accessKeyId = "LTAI4G75ppcvSMeFMhpb9Nr7";
    String accessKeySecret = "DbxyqujUN2d37ivs7oAR6Nk0J1aCyW";
    String bucketName = "save-pan";
    String filedir = "img/";
    // 获取文件名
//    String fileName = file.getOriginalFilename();
    // 获取文件后缀
//    String suffix = fileName.substring(fileName.lastIndexOf("."));
    //uuid生成主文件名
    String prefix = UUID.randomUUID().toString();
    String prefix2=prefix+".jpg";
//    String newFileName = prefix + suffix;
    File tempFile = null;
    try {
        //创建临时文件
        tempFile = File.createTempFile(prefix2, prefix2);
        // MultipartFile to File
        file.transferTo(tempFile);
    } catch (IOException e) {
        e.printStackTrace();
    }
    OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
    ossClient.putObject(bucketName, filedir + prefix2, tempFile);
    Date expiration = new Date(new Date().getTime() + 3600l * 1000 * 24 * 365 * 10);
    // 生成URL
    URL url = ossClient.generatePresignedUrl(bucketName, filedir + prefix2, expiration);
    ossClient.shutdown();
        String str = url.toString();
        String substring = str.substring(0, str.indexOf("?Expires="));
        String s = substring.replace("http://save-pan.oss-cn-shanghai.aliyuncs.com", "https://img2.panbingwen.cn");

        return s;
}

//    @ApiOperation(value = "存储提问内容中的图片地址",notes="传入提问id和图片地址")
//    @PostMapping(value = "/insertQuestionImg")
    public ResponseResult insertQuestionImgs(
            @RequestParam("questionId") int questionId,
            @RequestParam("imgs") String imgs
    ){
        //调用FastJson的序列化工具，将前端传过来的图片数组序列化字符串再反序列化为Java的List对象
        List<String> imgList = JSONArray.parseArray(imgs, String.class);
        //遍历图片List，创建Img对象写入数据库
        for (String imgUrl:imgList) {
            Img img = new Img();
            img.setQuestionId(questionId);
            img.setImgUrl(imgUrl);
            imgMapper.insertQuestionImg(img);
        }
        return ResponseResult.success();
    }
//    @ApiOperation(value = "存储交流中的图片地址",notes="传入交流id和图片地址")
//    @PostMapping(value = "/insertExchangeImg")
    public ResponseResult insertExchangeImgs(
            @RequestParam("exchangeId") int exchangeId,
            @RequestParam("imgs") String imgs
    ){
        //调用FastJson的序列化工具，将前端传过来的图片数组序列化字符串再反序列化为Java的List对象
        List<String> imgList = JSONArray.parseArray(imgs, String.class);
        //遍历图片List，创建Img对象写入数据库
        for (String imgUrl:imgList) {
            Img img = new Img();
            img.setExchangeId(exchangeId);
            img.setImgUrl(imgUrl);
            imgMapper.insertExchangeImg(img);
        }
        return ResponseResult.success();
    }


}
