package com.cxgc.news_app.core.services.managerment_service;

import com.cxgc.news_app.core.model.Manager;

import java.util.List;
import java.util.Map;

/**
 *  @author 何其勇
 *  @Version
 *  @Description
 */
public interface ManagerService {
    /**
     * 管理员登录
     * @param mgrNo
     * @param password
     * @return 集合11
     */

    Manager ManagerLogin(String mgrNo, String password);



    /**
     * 添加管理员
     * @param manager
     * @return
     */

    public int addManager(Manager manager);

/**
 * 根据ID删除管理员
 * @param id
 * @return
 */

    public Map<String,Object> deleteManagerById(int id);


/**
 * 获取所有管理员
 * @return
 */

    public List<Manager> getManager();


/**
 * 修改管理员基本信息
 * @param manager
 * @return
 */

    public Map<String,Object> modifyManagerInfo(Manager manager);


/**
 * 通过管理员ID修改管理员密码
 * @param id
 * @param password
 * @return
 */

    public Map<String,Object> modifyPasswordById(int id, String password);

}



