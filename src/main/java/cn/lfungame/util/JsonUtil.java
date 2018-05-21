package cn.lfungame.util;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @Auther: xuke
 * @Date: 2018/5/17 19:10
 * @Description: json和对象转换工具类
 */
public class JsonUtil {
    private static ObjectMapper mapper = new ObjectMapper();

    public static String beanToJson(Object obj) throws Exception {
        return mapper.writeValueAsString(obj);
    }

    public static Object jsonToBean(String json, Class clazz) throws Exception {
        return mapper.readValue(json, clazz);
    }
}
