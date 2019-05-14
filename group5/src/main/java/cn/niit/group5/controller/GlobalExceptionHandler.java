package cn.niit.group5.controller;

import cn.niit.group5.util.ResponseResult;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

@RestControllerAdvice
public class GlobalExceptionHandler {
       private ResponseResult result;

//    @ExceptionHandler(value = Exception.class)
    public ResponseResult phoneNull(HttpServletRequest request, Exception ex)
    {
          result=new ResponseResult(996,"发生了异常，请联系组长1592155834");
          return result;
    }

}
