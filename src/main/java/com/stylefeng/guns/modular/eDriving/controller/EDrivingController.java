package com.stylefeng.guns.modular.eDriving.controller;

import com.stylefeng.guns.common.annotion.Permission;
import com.stylefeng.guns.common.annotion.log.BussinessLog;
import com.stylefeng.guns.common.constant.Const;
import com.stylefeng.guns.common.constant.Dict;
import com.stylefeng.guns.common.constant.factory.ConstantFactory;
import com.stylefeng.guns.common.controller.BaseController;
import com.stylefeng.guns.common.exception.BizExceptionEnum;
import com.stylefeng.guns.common.exception.BussinessException;
import com.stylefeng.guns.common.persistence.dao.EDrivingMapper;
import com.stylefeng.guns.common.persistence.dao.NoticeMapper;
import com.stylefeng.guns.common.persistence.model.EDriving;
import com.stylefeng.guns.common.persistence.model.Notice;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.core.shiro.ShiroKit;
import com.stylefeng.guns.core.util.ToolUtil;
import com.stylefeng.guns.modular.eDriving.dao.EDrivingDao;
import com.stylefeng.guns.modular.system.dao.NoticeDao;
import com.stylefeng.guns.modular.system.warpper.EDrivingWrapper;
import com.stylefeng.guns.modular.system.warpper.NoticeWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.Map;

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

    @Resource
    private EDrivingMapper eDrivingeMapper;

    @Resource
    private EDrivingDao eDrivingeDao;
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

        EDriving eDriving = this.eDrivingeMapper.selectById(eDrivingId);
        model.addAttribute("eDriving",eDriving);
        LogObjectHolder.me().set(eDriving);
        return PREFIX + "eDriving_edit.html";
    }

    /**
     * 获取e代驾列表
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Object list(String condition) {
        List<Map<String, Object>> list = this.eDrivingeDao.list(condition);
        return super.warpObject(new EDrivingWrapper(list));
    }

    /**
     * 新增e代驾
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    @BussinessLog(value = "新增e代驾",key = "title",dict = Dict.EDrivingMap)
    @Permission
    public Object add(@Valid EDriving eDriving) {
//        if (ToolUtil.isOneEmpty(eDriving, eDriving.getTitle(), eDriving.getContent())) {
//            throw new BussinessException(BizExceptionEnum.REQUEST_NULL);
//        }
//        eDriving.setCreater(ShiroKit.getUser().getId());
//        eDriving.setCreatetime(new Date());
//        eDriving.insert();
        this.eDrivingeMapper.insert(eDriving);
        return super.SUCCESS_TIP;
    }

    /**
     * 删除e代驾
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    @BussinessLog(value = "删除e代驾",key = "eDrivingId",dict = Dict.DeleteDict)
    @Permission
    public Object delete(@RequestParam Integer eDrivingId) {
        //缓存 e代驾 名称
        LogObjectHolder.me().set(ConstantFactory.me().getEDrivingTitle(eDrivingId));
        this.eDrivingeMapper.deleteById(eDrivingId);
        return SUCCESS_TIP;
    }


    /**
     * 修改e代驾
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    @BussinessLog(value = "修改e代驾",key = "title",dict = Dict.EDrivingMap)
    @Permission
    public Object update(@Valid EDriving eDriving) {
//        if (ToolUtil.isOneEmpty(eDriving, eDriving.getId(), eDriving.getTitle(), eDriving.getContent())) {
//            throw new BussinessException(BizExceptionEnum.REQUEST_NULL);
//        }
//        EDriving old = this.eDrivingeMapper.selectById(eDriving.getId());
//        old.setTitle(eDriving.getTitle());
//        old.setContent(eDriving.getContent());
//        old.updateById();
        this.eDrivingeMapper.updateById(eDriving);
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
