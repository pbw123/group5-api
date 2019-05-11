package cn.niit.group5.exceptionhandler;

import cn.niit.group5.util.MsgConst;

public class PassValidatorException extends Exception {
    public PassValidatorException() {
        super(MsgConst.PASSWORD_VALIDATOR);
    }
}
