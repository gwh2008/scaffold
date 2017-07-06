package com.gaowh.scaffold.modular.biz.service.impl;

import com.gaowh.scaffold.common.annotion.DataSource;
import com.gaowh.scaffold.common.persistence.model.Test;
import com.gaowh.scaffold.modular.biz.service.ITestService;
import com.gaowh.scaffold.common.constant.DSEnum;
import com.gaowh.scaffold.common.persistence.dao.TestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 测试服务
 *
 * @author gaowh
 * @date 2017-06-23 23:02
 */
@Service
public class TestServiceImpl implements ITestService {


    @Autowired
    TestMapper testMapper;

    @Override
    @DataSource(name = DSEnum.DATA_SOURCE_BIZ)
    public void testBiz() {
        Test test = testMapper.selectById(1);
        test.setId(22);
        test.insert();
    }


    @Override
    @DataSource(name = DSEnum.DATA_SOURCE_scaffold)
    public void testscaffold() {
        Test test = testMapper.selectById(1);
        test.setId(33);
        test.insert();
    }

    @Override
    @Transactional
    public void testAll() {
        testBiz();
        testscaffold();
        //int i = 1 / 0;
    }

}
