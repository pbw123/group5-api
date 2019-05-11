package cn.niit.group5.exceptionhandler;

import cn.niit.group5.util.MsgConst;

public class PhoneNullException extends Exception {
    public PhoneNullException() {
        super(MsgConst.PHONE_NUMBER_NULL);
    }
}
