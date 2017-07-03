package com.stylefeng.guns.modular.eDriving.controller;

import com.stylefeng.guns.common.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * e代驾控制器
 *
 * @author gaowh
 * @Date 2017-06-30 18:03:20
 */
@Controller
@RequestMapping("/eDriving")
public class EDrivingController extends BaseController {

    private String PREFIX = "/eDriving/eDriving/";

    /**
     * 跳转到e代驾首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "eDriving.html";
    }

    /**
     * 跳转到添加e代驾
     */
    @RequestMapping("/eDriving_add")
    public String eDrivingAdd() {
        return PREFIX + "eDriving_add.html";
    }

    /**
     * 跳转到修改e代驾
     */
    @RequestMapping("/eDriving_update/{eDrivingId}")
    public String eDrivingUpdate(@PathVariable Integer eDrivingId, Model model) {
        return PREFIX + "eDriving_edit.html";
    }

    /**
     * 获取e代驾列表
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Object list(String condition) {
        return null;
    }

    /**
     * 新增e代驾
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public Object add() {
        return super.SUCCESS_TIP;
    }

    /**
     * 删除e代驾
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete() {
        return SUCCESS_TIP;
    }


    /**
     * 修改e代驾
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update() {
        return super.SUCCESS_TIP;
    }

    /**
     * e代驾详情
     */
    @RequestMapping(value = "/detail")
    @ResponseBody
    public Object detail() {
        return null;
    }
}
