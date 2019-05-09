package cn.niit.group5.util;

import java.util.Random;

public class NewCodeUtil {

    public static String getNewCode()
    {
        Random random=new Random();
        StringBuffer stringBuffer=new StringBuffer();
        for (int i=0;i<6;i++)
        {
            stringBuffer.append(String.valueOf(random.nextInt(10)));
        }
        System.out.println(stringBuffer.toString());
        return  stringBuffer.toString();
    }
    }

