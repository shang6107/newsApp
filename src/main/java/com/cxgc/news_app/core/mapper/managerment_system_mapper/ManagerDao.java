package com.cxgc.news_app.core.mapper.managerment_system_mapper;


import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.core.model.Groups;
import com.cxgc.news_app.core.model.Manager;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 *  @author 何其勇
 *  @Version
 *  @Description
 */
public interface ManagerDao {
    List<Map<String,Object>> getBackLogByMgrNo(String mgrNo);
    String getNextMgrNo();
    void backlog(Map<String,Object> backlog);
    Manager getManagerById(String id);
    Manager getManagerByMgrNo(String mgrNo);//根据ID得到管理员信息
    void updateLastLoginTimeAndAddressAndLoginCount(String mgrNo,String address);//修改管理员上次登录时间
    void updateManager(Manager manager);
    
    /**
     *
     * @param manager
     * @return 增加行数
     */
    void addManager(Manager manager);

    /**
     * 通过管理员ID删除管理员
     * @param id
     * @return删除的行数
     */
    public int deleteManagerById(@Param("id") int id);


    /**
     * 获取所有管理员列表
     * @return 管理员列表集合
     */
    public List<Manager> selectAllManager();

    /**
     *
     * @param manager
     * @return
     */

    /**
     * 修改管理员密码
     * @param adId
     * @param password
     * @return
     */
    public int updatePassword(@Param("id") int adId, @Param("password") String password);
}



