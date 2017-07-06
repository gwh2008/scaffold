package com.gaowh.scaffold.modular.system.warpper;

import com.gaowh.scaffold.common.warpper.BaseControllerWarpper;
import com.gaowh.scaffold.common.constant.factory.ConstantFactory;

import java.util.Map;

/**
 * 通知列表的包装
 *
 * @author gaowh
 * @date 2017年4月25日 18:10:31
 */
public class NoticeWrapper extends BaseControllerWarpper {

    public NoticeWrapper(Object list) {
        super(list);
    }

    @Override
    public void warpTheMap(Map<String, Object> map) {
        Integer creater = (Integer) map.get("creater");
        map.put("createrName", ConstantFactory.me().getUserNameById(creater));
    }

}
