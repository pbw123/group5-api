package cn.niit.group5.config;

import cn.niit.group5.util.Client;
import cn.niit.group5.util.Manager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Created by 公子白 on 2019/4/24.
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2).groupName("流沙-客户端")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.withClassAnnotation(Client.class))
                .paths(PathSelectors.any())
                .build();
    }

    @Bean
    public Docket createTeacherDocket() {
        return new Docket(DocumentationType.SWAGGER_2).groupName("纵横").apiInfo(apiInfo()).select()
                .apis(RequestHandlerSelectors.withClassAnnotation(Manager.class))
                .paths(PathSelectors.any()).build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("校企合作农技耘之接口文档")
                .description("哪里有问题的欢迎和我交流探讨，共同学习")
                .termsOfServiceUrl("https://www.jianshu.com/u/2f60beddf923")
                .contact("WEN")
                .version("1.0")
                .build();
    }
}
