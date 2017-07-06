package com.gaowh.scaffold;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

/**
 * scaffold Web程序启动类
 *
 * @author gaowh
 * @date 2017-05-21 9:43
 */
public class ScaffoldServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(ScaffoldApplication.class);
    }

}
