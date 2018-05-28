package cn.lfungame.controller;

import cn.lfungame.model.Gamers;
import cn.lfungame.service.UpDownService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @Auther: ZouLiFu
 * @Date: 2018/5/28 14:22
 * @Description:处理图片上传
 */
@RestController
@RequestMapping("/imageUpload")
public class ImageUploadController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UpDownService upDownService;

    @PostMapping("/headImg")
    public Map<String, Object> headImgUpload(HttpServletRequest request, @RequestParam("file")MultipartFile file) {
        Map<String, Object> value = new HashMap<String, Object>();
        value.put("success", true);
        value.put("errorCode", 0);
        value.put("errorMsg", "");
        try {
            String head = upDownService.updateHead(file, 5);//此处是调用上传服务接口，4是需要更新的userId 测试数据。
            value.put("data", head);
            logger.info("文件上传成功");
        } catch (IOException e) {
            e.printStackTrace();
            value.put("success", false);
            value.put("errorCode", 500);
            value.put("errorMsg", "图片上传失败");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return value;
    }
}
