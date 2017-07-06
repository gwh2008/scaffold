package com.gaowh.scaffold.system;

import com.gaowh.scaffold.base.BaseJunit;
import com.gaowh.scaffold.modular.system.dao.NoticeDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

import static org.junit.Assert.assertTrue;

/**
 * 首页通知展示测试
 *
 * @author gaowh
 * @date 2017-05-21 15:02
 */
public class BlackBoardTest extends BaseJunit {

    @Autowired
    NoticeDao noticeDao;

    @Test
    public void blackBoardTest() {
        List<Map<String, Object>> notices = noticeDao.list(null);
        assertTrue(notices.size() > 0);
    }
}
