package cn.lfungame.controller;

import cn.lfungame.config.SendsmsConfig;
import cn.lfungame.util.ResponseMsg;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Auther: ZouLiFu
 * @Date: 2018/5/29 14:38
 * @Description:测试短信接口控制器
 */
@RestController
@RequestMapping("/Sendsms")
public class SmsController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private SendsmsConfig sendsmsConfig;
    private static int code;

    @PostMapping("/send")
    public Object sendSms(String telephone) throws ClientException {
        logger.info("+++++++++++++++++++++获取手机号码为："+telephone+"+++++++++++++++");
        code = (int)(Math.random()*9999)+1000;//随机生成3-5位数的验证码
        logger.info("=================验证码生成成功，验证码为："+code+"=================");
        ResponseMsg msg = new ResponseMsg<>();
        // 可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        // 初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", sendsmsConfig.getAccessKeyId(), sendsmsConfig.getAccessKeySecret());
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", sendsmsConfig.getProduct(), sendsmsConfig.getDomain());
        IAcsClient acsClient = new DefaultAcsClient(profile);
        // 组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        // 必填:待发送手机号
        request.setPhoneNumbers(telephone);
        // 必填:短信签名-可在短信控制台中找到
        request.setSignName(""); // TODO 改这里
        // 必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("");  // TODO 改这里
        // 可选:模板中的变量替换JSON串,如模板内容为"亲爱的用户,您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"code\":\"" + code + "\"}");
        // 选填-上行短信扩展码(无特殊需求用户请忽略此字段)
        // request.setSmsUpExtendCode("90997");
        // 可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        request.setOutId("yourOutId");
        // hint 此处可能会抛出异常，注意catch
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
        if(sendSmsResponse.getCode()!= null && sendSmsResponse.getCode().equals("OK")){
            msg.setCode(0);
            msg.setData(sendSmsResponse);
            msg.setMessage("短信发送成功！");
        }
        return msg;
    }
}