package com.gaowh.scaffold.biz;

import com.gaowh.scaffold.base.BaseJunit;
import com.gaowh.scaffold.modular.biz.service.ITestService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 业务测试
 *
 * @author gaowh
 * @date 2017-06-23 23:12
 */
public class BizTest extends BaseJunit {

    @Autowired
    ITestService testService;

    @Test
    public void test() {
        //testService.testscaffold();

       // testService.testBiz();

        //testService.testAll();
    }
}
