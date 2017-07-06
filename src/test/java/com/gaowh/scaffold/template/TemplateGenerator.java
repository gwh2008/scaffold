package com.gaowh.scaffold.template;

import com.gaowh.scaffold.core.template.config.ContextConfig;
import com.gaowh.scaffold.core.template.engine.SimpleTemplateEngine;
import com.gaowh.scaffold.core.template.engine.base.ScaffoldTemplateEngine;

import java.io.IOException;

/**
 * 测试scaffold模板引擎
 *
 * @author gaowh
 * @date 2017-05-09 20:27
 */
public class TemplateGenerator {

    public static void main(String[] args) throws IOException {
        ContextConfig contextConfig = new ContextConfig();
        contextConfig.setBizChName("啊哈");
        contextConfig.setBizEnName("haha");
        contextConfig.setModuleName("tk");
        contextConfig.setProjectPath("G:\\workspace\\scaffold");

        //contextConfig.setAddPageSwitch(false);
        //contextConfig.setEditPageSwitch(false);

        ScaffoldTemplateEngine scaffoldTemplateEngine = new SimpleTemplateEngine();
        scaffoldTemplateEngine.setContextConfig(contextConfig);
        scaffoldTemplateEngine.start();
    }

}
