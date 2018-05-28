package cn.lfungame.service;

import cn.lfungame.mapper.UserMapper;
import cn.lfungame.model.Gamers;
import cn.lfungame.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

/**
 * @Auther: ZouLiFu
 * @Date: 2018/5/28 14:20
 * @Description:
 */
@Service
public class UpDownService {
    @Autowired
    private UserMapper userMapper;
    private OSSClientUtil ossClient=new OSSClientUtil();
    public String updateHead(MultipartFile file, long userId) throws Exception {
        Gamers gamers = new Gamers();
        if (file == null || file.getSize() <= 0) {
            throw new Exception("头像不能为空");
        }
        String name = ossClient.uploadImg2Oss(file);
        String imgUrl = ossClient.getImgUrl(name);
        //把用户信息保存到数据库
        gamers.setId(userId);
        gamers.setHead(imgUrl);
        gamers.setWxid("286327632");
        gamers.setDeviceid("110");
        gamers.setPhonenumber("13551720416");
        gamers.setNickname("小可爱");
        gamers.setAge(new Date());
        gamers.setCreated(new Date());
        gamers.setUpdated(new Date());
        userMapper.insertGamers(gamers);
        return imgUrl;
    }
}
