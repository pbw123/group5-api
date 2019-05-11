package cn.niit.group5.exceptionhandler;

import cn.niit.group5.util.MsgConst;

public class PassNullException extends Exception {
    public PassNullException() {
        super(MsgConst.PASSWORD_NULL_);
    }
}
