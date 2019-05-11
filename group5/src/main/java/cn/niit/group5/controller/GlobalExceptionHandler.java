package cn.niit.group5.controller;

import cn.niit.group5.entity.ResponseResult;
import cn.niit.group5.exceptionhandler.*;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.StatusConst;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

@RestControllerAdvice
public class GlobalExceptionHandler {
       private ResponseResult result;

    @ExceptionHandler(value = PhoneNullException.class)
    public ResponseResult phoneNull(HttpServletRequest request, Exception ex)
    {
          result=new ResponseResult(StatusConst.PHONE_NULL_ERROR, MsgConst.PHONE_NUMBER_NULL);
          return result;
    }
    @ExceptionHandler(value = PhoneValidatorException.class)
    public ResponseResult phoneValidator(HttpServletRequest request, Exception ex)
    {
          result=new ResponseResult(StatusConst.PHONE_VALIDATOR_ERROR_, MsgConst.PHONE_NUMBER_VALIDATOR);
          return result;
    }
    @ExceptionHandler(value = PhonePassNullException.class)
    public ResponseResult phonePassNull(HttpServletRequest request, Exception ex)
    {
          result=new ResponseResult(StatusConst.PHONE_PASSWORD_NULL_ERROR, MsgConst.PHONE_NUMBER_PASSWORD_NULL);
          return result;
    }
    @ExceptionHandler(value = PassNullException.class)
    public ResponseResult passwordNull(HttpServletRequest request, Exception ex)
    {
          result=new ResponseResult(StatusConst.PASSWORD_NULL, MsgConst.PASSWORD_NULL_);
          return result;
    }
    @ExceptionHandler(value = PassValidatorException.class)
    public ResponseResult passwordValidator(HttpServletRequest request, Exception ex)
    {
          result=new ResponseResult(StatusConst.PASSWORD_VALIDATOR, MsgConst.PASSWORD_VALIDATOR);
          return result;
    }
}
