package cn.niit.group5.exceptionhandler;

import cn.niit.group5.util.MsgConst;

public class PhonePassNullException extends Exception {
    public PhonePassNullException() {
        super(MsgConst.PHONE_NUMBER_PASSWORD_NULL);
    }
}
