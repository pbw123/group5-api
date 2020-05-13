package cn.niit.group5.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 封装统一的响应体
 * 调用 ResponseResult.success() 或 ResponseResult.success(Object data),
 * 不需要返回数据时调用前者, 需要返回数据时调用后者
 */
@Data
@AllArgsConstructor
public class ResponseResult {
    private int code;
    private String msg;
    private Object data;
    private Integer total;

    public ResponseResult() {
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public static ResponseResult error(int code, String msg) {
        ResponseResult responseResult = new ResponseResult();
        responseResult.setCode(code);
        responseResult.setMsg(msg);
        return responseResult;
    }

    public static ResponseResult success() {
        ResponseResult responseResult = new ResponseResult();
        responseResult.setCode(StatusConst.SUCCESS);
        responseResult.setMsg(MsgConst.SUCCESS);
        return responseResult;
    }

    public static ResponseResult success(Object data) {
        ResponseResult responseResult = new ResponseResult();
        responseResult.setCode(StatusConst.SUCCESS);
        responseResult.setMsg(MsgConst.SUCCESS);
        responseResult.setData(data);
        return responseResult;
    }
    public static ResponseResult succ(Object data,Integer total) {
        ResponseResult responseResult = new ResponseResult();
        responseResult.setCode(StatusConst.SUCCESS);
        responseResult.setMsg(MsgConst.SUCCESS);
        responseResult.setData(data);
        responseResult.setTotal(total);
        return responseResult;
    }

    public ResponseResult(int code, String msg) {
        this.code = code;
        this.msg = msg;

    }
}
