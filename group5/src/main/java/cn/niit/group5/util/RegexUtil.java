package cn.niit.group5.util;

import java.util.regex.Pattern;

public class RegexUtil {
    /**
     * 正则表达式：验证规则
     */
    public static final String REGEX_PASSWORD = "^[a-zA-Z0-9]{6,}$";
    /**
     * 手机号
     */
   public static String PHONE_NUMBER_REG = "^(13[0-9]|14[579]|15[0-3," +
            "5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$";

    public static boolean phoneNumberRegex(String phoneNumber)
    {
        return Pattern.matches(PHONE_NUMBER_REG, phoneNumber);
    }
    public static boolean passRegex(String password)
    {
        return Pattern.matches(REGEX_PASSWORD, password);
    }
}
