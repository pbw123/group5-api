package cn.niit.group5.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtil {
    public static String getDateString(Date date) {
       DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
       return df.format(date);
    }
}
