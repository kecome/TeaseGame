package cn.lfungame.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * @Auther: xuke
 * @Date: 2018/6/1 19:02
 * @Description:
 */
public class UserUtil {
    public static Long getCurrentUserId(){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        Long id = Long.valueOf(request.getHeader("id"));
        return id;
    }
}
