package com.test.service.impl;

import com.cxgc.news_app.core.model.Manager;
import com.test.dao.ManagerDao;
import com.test.service.MangerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 *  @author 何其勇
 *  @Version
 *  @Description
 */
@Service("ManagerService")
public class ManagerServiceImpl implements MangerService {
@Autowired
   private ManagerDao md;
    private Map<String,Object> result;

    @Override
    public Map<String, Object> addManager(Manager manager) {
        return null;
    }

    @Override
    public Map<String, Object> deleteManagerById(int id) {
        return null;
    }

    @Override
    public Map<String, Object> getManager() {
        return null;
    }

    @Override
    public Map<String, Object> modifyManagerInfo(Manager manager) {
        return null;
    }

    @Override
    public Map<String, Object> modifyPasswordById(int id, String password) {
        return null;
    }
}
