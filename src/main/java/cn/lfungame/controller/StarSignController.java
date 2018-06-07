package cn.lfungame.controller;

import cn.lfungame.model.Gamer;
import cn.lfungame.util.ResponseMsg;
import cn.lfungame.util.UserUtil;
import org.springframework.web.bind.annotation.*;

/**
 * @Auther: xuke
 * @Date: 2018/6/6 12:08
 * @Description:
 */
@RestController
@RequestMapping("/starSign")
public class StarSignController {

    @GetMapping("/list")
    Object listStarSign() {
        ResponseMsg msg = new ResponseMsg();
        return msg;
    }
}
