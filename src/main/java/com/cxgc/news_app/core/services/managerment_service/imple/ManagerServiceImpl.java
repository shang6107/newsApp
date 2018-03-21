package com.cxgc.news_app.core.services.managerment_service.imple;

import com.cxgc.news_app.core.model.Manager;
import com.test.dao.ManagerDao;
import com.test.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 *  @author 何其勇
 *  @Version
 *  @Description
 */
@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService {
@Autowired
   private ManagerDao md;
    private Map<String,Object> result;

    @Override
    public Map<String, Object> ManagerLogin(String mgrNo, String password) {
        return null;
    }

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
