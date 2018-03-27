package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.core.mapper.managerment_system_mapper.UserManagementDao;
import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

@Service
public class UserManagementServiceImpl implements UserManagementService{
    @Autowired
    private UserManagementDao umd;

    @Override
    public List<User> selectAllUser() {
        return umd.selectAllUser();
    }

    @Override
    public int editUserInfo(User user ) {
        return umd.editUserInfo(user);
    }

    @Override
    public User getUserById(String phoneNum) {
        return umd.getUserById(phoneNum);
    }
}
