package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.core.mapper.managerment_system_mapper.ManagerDao;
import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author 何其勇
 * @Version
 * @Description
 */
@Service
public class ManagerServiceImpl implements ManagerService {
    @Autowired
    private ManagerDao md;

    @Override
    public Manager ManagerLogin(String mgrNo, String password) {
        return md.selectByMgrNoAndPassword(mgrNo, password);
    }

    @Override
    public Manager getManagerByMgrNo(String no) {
        //:TODO 待实现的 mgrService 方法
        
        
        
        return null;
    }

    @Override
    public int addManager(Manager manager) {
        return md.addManager(manager);
    }

    @Override
    public Map<String, Object> deleteManagerById(int id) {
        return null;
    }

    @Override
    public List<Manager> getManager() {
        return md.selectAllManager();
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
