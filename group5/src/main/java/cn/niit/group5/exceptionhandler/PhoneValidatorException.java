package cn.niit.group5.exceptionhandler;

import cn.niit.group5.util.MsgConst;

public class PhoneValidatorException extends Exception {
    public PhoneValidatorException() {
        super(MsgConst.PHONE_NUMBER_VALIDATOR);
    }
}
