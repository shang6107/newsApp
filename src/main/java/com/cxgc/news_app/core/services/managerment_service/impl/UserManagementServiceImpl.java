package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.core.mapper.managerment_system_mapper.UserManagementDao;
import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import com.github.pagehelper.PageHelper;

import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.MapKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

@Service
public class UserManagementServiceImpl implements UserManagementService {
    @Autowired
    private UserManagementDao umd;


    @Override
    public Object selectAllUser(Integer pageNum, Integer pageSize) {
        if (pageNum == null || pageSize == null) {
            return umd.selectAllUser();
        }
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<>(umd.selectAllUser());

    }


    @Override
    public int editUserInfo(User user) {
        return umd.editUserInfo(user);
    }

    @Override
    public User getUserById(String phoneNum) {
        return umd.getUserById(phoneNum);
    }

    @Override
    public Map<String, Object> countMen() {
        return /*umd.countMen()*/ null;
    }

    @Override
    public Map<String, Object> countFreeze() {
        return umd.countFreeze();
    }

    @Override
    public Map<String, Object> countAll() {
        return umd.countAll();
    }

    @Override
    public Map<String, Object> countFailure() {
        return umd.countFailure();
    }

    @Override
    public Map<String, Object> test() {
        return umd.test();
    }
}
