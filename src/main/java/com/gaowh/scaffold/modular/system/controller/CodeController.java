package com.gaowh.scaffold.modular.system.controller;

import com.gaowh.scaffold.common.annotion.Permission;
import com.gaowh.scaffold.common.constant.Const;
import com.gaowh.scaffold.common.controller.BaseController;
import com.gaowh.scaffold.common.exception.BussinessException;
import com.gaowh.scaffold.core.template.config.ContextConfig;
import com.gaowh.scaffold.core.template.engine.SimpleTemplateEngine;
import com.gaowh.scaffold.core.template.engine.base.ScaffoldTemplateEngine;
import com.gaowh.scaffold.core.util.ToolUtil;
import com.gaowh.scaffold.common.exception.BizExceptionEnum;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 代码生成控制器
 *
 * @author gaowh
 * @Date 2017-05-23 18:52:34
 */
@Controller
@RequestMapping("/code")
public class CodeController extends BaseController {

    private String PREFIX = "/system/code/";

    /**
     * 跳转到代码生成首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "code.html";
    }

    /**
     * 代码生成
     * post请求  @ApiImplicitParam 应该加 paramType = "form"
     * 方法的参数应该  @RequestParam("str1")String str1
     * 此方法版本老，没有写！
     */
    @ApiOperation("生成代码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "moduleName", value = "模块名称", required = true, dataType = "String"),
            @ApiImplicitParam(name = "bizChName", value = "业务名称", required = false, dataType = "String"),
            @ApiImplicitParam(name = "bizEnName", value = "业务英文名称", required = false, dataType = "String"),
            @ApiImplicitParam(name = "path", value = "项目生成类路径", required = false, dataType = "String")
    })
    @RequestMapping(value = "/generate", method = RequestMethod.POST)
    @ResponseBody
    @Permission(Const.ADMIN_NAME)
    public Object add(String moduleName, String bizChName, String bizEnName, String path) {
        if (ToolUtil.isOneEmpty(bizChName, bizEnName)) {
            throw new BussinessException(BizExceptionEnum.REQUEST_NULL);
        }
        ContextConfig contextConfig = new ContextConfig();
        contextConfig.setBizChName(bizChName);
        contextConfig.setBizEnName(bizEnName);
        contextConfig.setModuleName(moduleName);
        if (ToolUtil.isNotEmpty(path)) {
            contextConfig.setProjectPath(path);
        }
        ScaffoldTemplateEngine scaffoldTemplateEngine = new SimpleTemplateEngine();
        scaffoldTemplateEngine.setContextConfig(contextConfig);
        scaffoldTemplateEngine.start();

        return super.SUCCESS_TIP;
    }

    @ApiOperation(value = "测试接口",notes = "测试接口")
    @ApiResponse(code = 200, message = "成功！")
    @ApiImplicitParam(name = "str1", value = "参数", required = true, dataType = "String",paramType = "form")
    @RequestMapping(value = "/test", method = RequestMethod.POST)
    @ResponseBody
    @Permission(Const.ADMIN_NAME)
    public String test(@RequestParam("str1")String str1) {

        String str = str1;
        return str1 == null?"参数为空":str1;
    }


//    @ApiOperation( "测试接口")
//    @ApiImplicitParam(name = "str1", value = "参数", required = true, dataType = "String",paramType = "path")
//    @RequestMapping(value = "/test", method = RequestMethod.POST)
//    @ResponseBody
//    @Permission(Const.ADMIN_NAME)
//    public String test(String str1) {
//        return str1 == null?"":str1;
//    }


}
