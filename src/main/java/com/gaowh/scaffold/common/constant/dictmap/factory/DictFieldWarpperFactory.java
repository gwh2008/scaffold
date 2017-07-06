package com.gaowh.scaffold.common.constant.dictmap.factory;

import com.gaowh.scaffold.common.exception.BussinessException;
import com.gaowh.scaffold.common.constant.factory.ConstantFactory;
import com.gaowh.scaffold.common.constant.factory.IConstantFactory;
import com.gaowh.scaffold.common.exception.BizExceptionEnum;

import java.lang.reflect.Method;

/**
 * 字段的包装创建工厂
 *
 * @author gaowh
 * @date 2017-05-06 15:12
 */
public class DictFieldWarpperFactory {

    public static Object createFieldWarpper(Object field, String methodName) {
        IConstantFactory me = ConstantFactory.me();
        try {
            Method method = IConstantFactory.class.getMethod(methodName, field.getClass());
            Object result = method.invoke(me, field);
            return result;
        } catch (Exception e) {
            try {
                Method method = IConstantFactory.class.getMethod(methodName, Integer.class);
                Object result = method.invoke(me, Integer.parseInt(field.toString()));
                return result;
            } catch (Exception e1) {
                throw new BussinessException(BizExceptionEnum.ERROR_WRAPPER_FIELD);
            }
        }
    }

}
