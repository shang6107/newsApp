package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.core.mapper.commons_mapper.AppDao;
import com.cxgc.news_app.core.mapper.managerment_system_mapper.GroupDao;
import com.cxgc.news_app.core.mapper.managerment_system_mapper.ManagerDao;
import com.cxgc.news_app.core.model.Authorities;
import com.cxgc.news_app.core.model.Groups;
import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
    @Autowired
    private GroupDao groupDao;
    @Autowired
    private AppDao appDao;


    @Override
    public List<Map<String, Object>> getTotalData() {
        return appDao.getTotalData();
    }

    @Override
    public List<Map<String,Object>> getBackLogByMgrNo(String mgrNo) {
        return md.getBackLogByMgrNo(mgrNo);
    }

    @Override
    public String getNextMgrNo() {
        return md.getNextMgrNo();
    }

    @Override
    public void backlog(Map<String, Object> backlog) {
        md.backlog(backlog);
    }

    @Override
    public Manager getManagerById(String id) {
        return md.getManagerById(id);
    }

    @Override
    public List<Groups> getAllGroups() {
        return groupDao.getAllGroups();
    }

    @Override
    public List<Authorities> getAuthoritiesByGroupId(String id) {
        return groupDao.getAuthoritiesByGroupId(id);
    }

    /*@Override
    public List<Authorities> getAllAuthorities() {
        return groupDao.getAuthoritiesByGroupId();
    }*/


    @Override
    public void updateManagerStatus(Manager manager) {
        md.updateManager(manager);
    }

    @Override
    public void updateManager(Manager manager) {
        manager.setPassword(new BCryptPasswordEncoder().encode(manager.getPassword()));
        md.updateManager(manager);
    }

    @Override
    public Groups getGroupByName(String name) {
        return groupDao.getGroupByName(name);
    }

    @Override
    public void addManager(Manager manager) {
        manager.setPassword(new BCryptPasswordEncoder().encode(manager.getPassword()));
        md.addManager(manager);
    }

    @Override
    public Map<String, Object> deleteManagerById(int id) {
        return null;
    }

    @Override
    public Object getManager(Integer pageNum, Integer pageSize) {
        if (pageNum == null || pageSize == null)
            return md.selectAllManager();
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<Manager>(md.selectAllManager());
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
