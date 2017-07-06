package com.gaowh.scaffold.modular.system.warpper;

import com.gaowh.scaffold.common.constant.state.IsMenu;
import com.gaowh.scaffold.common.warpper.BaseControllerWarpper;
import com.gaowh.scaffold.common.constant.factory.ConstantFactory;

import java.util.List;
import java.util.Map;

/**
 * 菜单列表的包装类
 *
 * @author gaowh
 * @date 2017年2月19日15:07:29
 */
public class MenuWarpper extends BaseControllerWarpper {

    public MenuWarpper(List<Map<String, Object>> list) {
        super(list);
    }

    @Override
    public void warpTheMap(Map<String, Object> map) {
        map.put("statusName", ConstantFactory.me().getMenuStatusName((Integer) map.get("status")));
        map.put("isMenuName", IsMenu.valueOf((Integer) map.get("ismenu")));
    }

}
