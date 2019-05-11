package cn.niit.group5.util;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;

/**
 * 短信发送工具类
 */
public class SMSUtil {
    public static int send(String mobile,String newCode) {
        DefaultProfile profile = DefaultProfile.getProfile(
                "cn-hangzhou",
                "LTAIelFvJkV74tTC",
                "PumKvfJwNZPO8F2WHfg8lwgjKhKjLL");
        IAcsClient client = new DefaultAcsClient(profile);
        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", mobile);
        request.putQueryParameter("SignName", "小生不才");
        request.putQueryParameter("TemplateCode", "SMS_162732775");
//        String verifyCode =NewCodeUtil.getNewCode();
        request.putQueryParameter("TemplateParam", "{\"code\":" + newCode + "}");
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
        return StatusConst.SUCCESS;
    }



}
