package cn.niit.group5.controller;


import cn.niit.group5.entity.Img;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.util.ResponseResult;
import com.alibaba.fastjson.JSONArray;
import com.aliyun.oss.OSSClient;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping(value = "/api")
public class InsertImgsController {

   @Autowired
    ImgMapper imgMapper;

   @ApiOperation(value = "图片上传至阿里云OSS，生成图片地址")
@PostMapping(value = "/img/insetImg")
        public String ossUpload(@RequestParam("file") MultipartFile sourceFile) {
    String endpoint = "http://oss-cn-shanghai.aliyuncs.com";
    String accessKeyId = "LTAIZsuAeD3qGFzf";
    String accessKeySecret = "RiwVnBS3AHXCKuQKV53CGM9GFC7B1u";
    String bucketName = "niit-jay";
    String filedir = "avatar/";
    // 获取文件名
    String fileName = sourceFile.getOriginalFilename();
    // 获取文件后缀
    String suffix = fileName.substring(fileName.lastIndexOf("."));
    //uuid生成主文件名
    String prefix = UUID.randomUUID().toString();
    String newFileName = prefix + suffix;
    File tempFile = null;
    try {
        //创建临时文件
        tempFile = File.createTempFile(prefix, prefix);
        // MultipartFile to File
        sourceFile.transferTo(tempFile);
    } catch (IOException e) {
        e.printStackTrace();
    }
    OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
    ossClient.putObject(bucketName, filedir + newFileName, tempFile);
    Date expiration = new Date(new Date().getTime() + 3600l * 1000 * 24 * 365 * 10);
    // 生成URL
    URL url = ossClient.generatePresignedUrl(bucketName, filedir + newFileName, expiration);
    ossClient.shutdown();
    return url.toString();
}

    @ApiOperation(value = "存储提问内容中的图片地址")
    @PostMapping(value = "/insertQuestionImg")
    public ResponseResult insertQuestionImgs(
            @RequestParam("questionId") int questionId,
            @RequestParam("imgs") String imgs
    ){
        //调用FastJson的序列化工具，将前端传过来的图片数组序列化字符串再反序列化为Java的List对象
        List<String> imgList = JSONArray.parseArray(imgs, String.class);
        //遍历图片List，创建Img对象写入数据库
        for (String imgUrl:imgList) {
            Img img = new Img();
            img.setIsJudge(0);
            img.setQuestionId(questionId);
            img.setImgUrl(imgUrl);
            imgMapper.insertQuestionImg(img);
        }
        return ResponseResult.success();
    }


}
