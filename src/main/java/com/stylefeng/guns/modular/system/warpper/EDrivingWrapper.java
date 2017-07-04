package com.stylefeng.guns.modular.system.warpper;

import com.stylefeng.guns.common.constant.factory.ConstantFactory;
import com.stylefeng.guns.common.warpper.BaseControllerWarpper;

import java.util.Map;

/**
 * e代驾列表的包装
 *
 * @author gaowh
 * @date 2017年7月3日 18:10:31
 */
public class EDrivingWrapper extends BaseControllerWarpper {

    public EDrivingWrapper(Object list) {
        super(list);
    }

    @Override
    public void warpTheMap(Map<String, Object> map) {
        Integer creater = (Integer) map.get("creater");
        map.put("createrName", ConstantFactory.me().getUserNameById(creater));
    }

}
