import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

/**
 * @Auther: xuke
 * @Date: 2018/5/14 16:40
 * @Description:
 */
@EnableAutoConfiguration
@ComponentScan(basePackages={"cn.lfungame"})
@MapperScan("cn.lfungame.mapper")
@EnableEurekaClient
@EnableFeignClients
public class BootApplication {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(BootApplication.class, args);
    }
}
