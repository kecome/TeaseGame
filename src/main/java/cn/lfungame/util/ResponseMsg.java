package cn.lfungame.util;

/**
 * @Auther: xuke
 * @Date: 2018/5/16 17:15
 * @Description:
 */
public class ResponseMsg<T> {
    /**
     * 请求响应码
     */
    private int code = 0;
    /**
     * 响应码描述
     */
    private String message = "成功";
    /**
     * 响应数据
     */
    private T data;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
