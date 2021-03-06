package cn.lfungame.controller;

import cn.lfungame.feignclients.GameClient;
import cn.lfungame.feignclients.LocationClient;
import cn.lfungame.model.User;
import cn.lfungame.util.ResponseMsg;
import cn.lfungame.service.UserService;
import cn.lfungame.util.UserUtil;
import com.github.pagehelper.PageSerializable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @Auther: xuke
 * @Date: 2018/5/14 16:41
 * @Description:rg
 */
@RestController
@RequestMapping("/test")
public class TestController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

   // @Autowired
   // private GameClient gameClient;
    @Autowired
    private UserService userService;


    @RequestMapping("/t")
    String home(HttpServletRequest request) {
       // String token = request.getHeader("id");
        System.out.println("token串为java：" + UserUtil.getCurrentUserId());
        logger.info("请求方法getClasses参数----->dsfadsfdsfdsafsdfa");
        System.out.println("提用成功");
        return "Hello World!";
    }

    @RequestMapping("/")
    Object index() {
        System.out.println("提用成功sdfadsfdsafd");

        //return locationClient.getLocation("34.350178", "108.949324");
        return null;
    }

    @RequestMapping("/all")
    Object all() {
        ResponseMsg<PageSerializable> msg = new ResponseMsg<>();
        PageSerializable page =  userService.selectPage(1, 3, "id desc");
        msg.setCode(0);
        msg.setData(page);
        msg.setMessage("请求成功");
        return msg;
    }

    @RequestMapping("/feign")
    String feign() {
        System.out.println("调用成功sdfadsfdsafd");
        User u = new User();
        u.setUsername("username用圧");
        u.setPassword("root password");
        //return gameClient.getUser(u);
        return null;
    }

    @RequestMapping("/add")
    String add() {
        User u = new User();
        u.setUsername("username用圧");
        u.setPassword("root password");
//        u.setId(Pretreatment.nextId());
//        u.setCreated(new Date());
//        u.setUpdated(new Date());
        userService.insertUser(u);
        return "success";
    }

    @PostMapping ("/update")
    String update() {
        User u = new User();
        u.setId(446727509712052224L);
        u.setUsername("test改dfdsfadsa");
        u.setPassword("root password1234");
        userService.updateUser(u);
        return "success";
    }

}
