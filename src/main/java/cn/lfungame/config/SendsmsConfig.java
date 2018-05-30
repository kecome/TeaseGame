package cn.lfungame.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

/**
 * @Auther: ZouLiFu
 * @Date: 2018/5/29 14:43
 * @Description:读取短信配置信息
 */
@Configuration
@PropertySource("classpath:sendsms.properties")
public class SendsmsConfig {
    @Value("${product}")
    private String product;

    @Value("${domain}")
    private String domain;

    @Value("${accessKeyId}")
    private String accessKeyId;

    @Value("${accessKeySecret}")
    private String accessKeySecret;

    public String getProduct() {
        return product;
    }
    public String getDomain() {
        return domain;
    }
    public String getAccessKeyId() {
        return accessKeyId;
    }
    public String getAccessKeySecret() {
        return accessKeySecret;
    }
}
