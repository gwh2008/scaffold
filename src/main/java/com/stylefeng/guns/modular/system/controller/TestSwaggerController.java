package com.stylefeng.guns.modular.system.controller;

import com.stylefeng.guns.common.annotion.Permission;
import com.stylefeng.guns.common.constant.Const;
import com.stylefeng.guns.common.controller.BaseController;
import com.stylefeng.guns.common.exception.BizExceptionEnum;
import com.stylefeng.guns.common.exception.BussinessException;
import com.stylefeng.guns.core.template.config.ContextConfig;
import com.stylefeng.guns.core.template.engine.SimpleTemplateEngine;
import com.stylefeng.guns.core.template.engine.base.GunsTemplateEngine;
import com.stylefeng.guns.core.util.ToolUtil;
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
 * order控制器
 *
 * @author gaowh
 * @Date 2017-05-23 18:52:34
 */
@Controller
@RequestMapping("/order")
public class TestSwaggerController extends BaseController {

    private String PREFIX = "/system/code/";

    /**
     * 跳转到代码生成首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "code.html";
    }

    /**
     * 订单
     */
    @ApiOperation("订单")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "moduleName", value = "名称", required = true, dataType = "String",paramType = "form"),
            @ApiImplicitParam(name = "path", value = "路径", required = false, dataType = "String",paramType = "form")
    })
    @RequestMapping(value = "/order", method = RequestMethod.POST)
    @ResponseBody
    @Permission(Const.ADMIN_NAME)
    public Object add(@RequestParam("moduleName")String moduleName, @RequestParam("path")String path) {
        if (ToolUtil.isOneEmpty(moduleName, path)) {
            throw new BussinessException(BizExceptionEnum.REQUEST_NULL);
        }
        return super.SUCCESS_TIP;
    }

    @ApiOperation(value = "测试接口",notes = "测试接口")
    @ApiResponse(code = 200, message = "成功！")
    @ApiImplicitParam(name = "appType", value = "参数", required = true, dataType = "String",paramType = "form")
    @RequestMapping(value = "/test", method = RequestMethod.POST)
    @ResponseBody
    @Permission(Const.ADMIN_NAME)
    public String test(@RequestParam("appType") String appType) {
        return appType == null?"参数为空！":appType;
    }



}
