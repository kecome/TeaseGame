package cn.lfungame.controller;

import cn.lfungame.model.Gamer;
import cn.lfungame.service.GamerService;
import cn.lfungame.util.ResponseMsg;
import cn.lfungame.util.UserUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Auther: xuke
 * @Date: 2018/6/4 14:47
 * @Description:hh
 */
@Api(tags = "玩家信息相关api")
@RestController
@RequestMapping("/gamer")
public class GamerController {

    @Autowired
    private GamerService gamerService;

    /**
     * 更新玩家信息
     * @param gamer
     * @return
     */
    @PostMapping("/update")
    @ApiOperation(value="玩家信息更新", notes="玩家个人信息更新")
    Object updateGamer(@RequestBody Gamer gamer) {
        ResponseMsg msg = new ResponseMsg();
        System.out.println("当前用户id:" + UserUtil.getCurrentUserId());
        gamer.setId(UserUtil.getCurrentUserId());
        gamerService.updateGamer(gamer);
        msg.setMessage("更新成功");
        return msg;
    }

    @GetMapping("/get")
    @ApiOperation(value="获取玩家信息", notes="获取玩家信息")
    Object getGamer() {
        ResponseMsg msg = new ResponseMsg();
        Gamer gamer = gamerService.selectGamerById(UserUtil.getCurrentUserId());
        msg.setData(gamer);
        return msg;
    }

}
