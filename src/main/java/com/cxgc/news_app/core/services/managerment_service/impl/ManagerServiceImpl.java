package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.core.mapper.managerment_system_mapper.GroupDao;
import com.cxgc.news_app.core.mapper.managerment_system_mapper.ManagerDao;
import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
    public void updateManagerStatus(Manager manager) {
        md.updateManager(manager);
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
    public Object getManager(Integer pageNum , Integer pageSize) {
        if(pageNum == null || pageSize == null)
            return md.selectAllManager();
        PageHelper.startPage(pageNum,pageSize);
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
