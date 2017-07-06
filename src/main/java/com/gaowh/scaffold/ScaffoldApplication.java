package com.gaowh.scaffold;

import com.gaowh.scaffold.config.properties.ScaffoldProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * SpringBoot方式启动类
 *
 * @author gaowh
 * @Date 2017/5/21 12:06
 */
@SpringBootApplication
public class ScaffoldApplication extends WebMvcConfigurerAdapter{

    protected final static Logger logger = LoggerFactory.getLogger(ScaffoldApplication.class);

    @Autowired
    ScaffoldProperties scaffoldProperties;

    /**
     * 增加swagger的支持
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        if(scaffoldProperties.getSwaggerOpen()){
            registry.addResourceHandler("swagger-ui.html").addResourceLocations("classpath:/META-INF/resources/");
            registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
        }
    }

    public static void main(String[] args) {
        SpringApplication.run(ScaffoldApplication.class, args);
        logger.info("scaffoldApplication is sussess!");
    }
}
