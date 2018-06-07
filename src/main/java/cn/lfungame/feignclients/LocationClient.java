package cn.lfungame.feignclients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @Auther: xuke
 * @Date: 2018/6/6 16:03
 * @Description:
 */
//@FeignClient(url = "http://gc.ditu.aliyun.com")
public interface LocationClient {

    @RequestMapping(method = RequestMethod.GET, value = "/regeocoding?l={lat},{log}&type=010")
    String getLocation(String lat, String log );
}
