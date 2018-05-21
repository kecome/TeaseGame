package cn.lfungame.feignclients;

import cn.lfungame.model.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @Auther: xuke
 * @Date: 2018/5/16 10:17
 * @Description:
 */
@FeignClient("game")
public interface GameClient {

    @RequestMapping(method = RequestMethod.GET, value = "/game/")
    String getGame();

    @RequestMapping(method = RequestMethod.POST, value = "/game/user")
    String getUser(@RequestBody User user);
}
