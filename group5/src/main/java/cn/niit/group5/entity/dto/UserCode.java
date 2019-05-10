package cn.niit.group5.entity.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class UserCode {
    @ApiModelProperty(value = "请输入正确的手机号")
//    @NotNull
//    @Pattern(regexp = "^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$",
//            message = "请输入正确的手机号")
    private String phoneNumber;

    @ApiModelProperty(value = "验证码不能为空")
//    @NotNull(message = "验证码不能为空")
    private String code;
}
