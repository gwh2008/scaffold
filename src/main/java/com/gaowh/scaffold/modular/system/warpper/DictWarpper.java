package com.gaowh.scaffold.modular.system.warpper;

import com.gaowh.scaffold.common.persistence.model.Dict;
import com.gaowh.scaffold.common.warpper.BaseControllerWarpper;
import com.gaowh.scaffold.common.constant.factory.ConstantFactory;
import com.gaowh.scaffold.core.util.ToolUtil;

import java.util.List;
import java.util.Map;

/**
 * 字典列表的包装
 *
 * @author gaowh
 * @date 2017年4月25日 18:10:31
 */
public class DictWarpper extends BaseControllerWarpper {

    public DictWarpper(Object list) {
        super(list);
    }

    @Override
    public void warpTheMap(Map<String, Object> map) {
        StringBuffer detail = new StringBuffer();
        Integer id = (Integer) map.get("id");
        List<Dict> dicts = ConstantFactory.me().findInDict(id);
        if(dicts != null){
            for (Dict dict : dicts) {
                detail.append(dict.getNum() + ":" +dict.getName() + ",");
            }
            map.put("detail", ToolUtil.removeSuffix(detail.toString(),","));
        }
    }

}
