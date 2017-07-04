package com.stylefeng.guns.modular.eDriving.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * e代驾Dao
 *
 * @author gaowh
 * @Date 2017-06-30 18:03:20
 */
public interface EDrivingDao {

    List<Map<String, Object>> list(@Param("condition") String condition);
}
