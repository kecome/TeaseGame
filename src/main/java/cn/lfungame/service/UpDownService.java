package cn.lfungame.service;

import cn.lfungame.mapper.UserMapper;
import cn.lfungame.model.Gamers;
import cn.lfungame.util.OSSClientUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserMapper userMapper;
    private OSSClientUtil ossClient=new OSSClientUtil();
    public String updateHead(MultipartFile file, long userId) throws Exception {
        Gamers gamers = new Gamers();
        String imgUrl = "";
        if (file == null || file.getSize() <= 0) {
            throw new Exception("头像不能为空");
        }
        try {
            String name = ossClient.uploadImg2Oss(file);
            imgUrl = ossClient.getImgUrl(name);
        }catch (Exception e){
            e.printStackTrace();
            logger.info("=====================文件上传出错=============================");
        }
        //把用户信息保存到数据库
        gamers.setHead(imgUrl);
        gamers.setPhoneNumber("13551720416");
        gamers.setWxId("wxidtest1234567890");
        gamers.setDeviceId("oppo_R11");
        gamers.setNickName("小可爱");
        gamers.setAge(new Date());
        try {
            userMapper.insertGamers(gamers);
        }catch (Exception e){
            e.printStackTrace();
            logger.info("=======================数据库保存异常================");
        }

        return imgUrl;
    }
}
