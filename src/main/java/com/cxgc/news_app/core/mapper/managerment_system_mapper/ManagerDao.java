package com.cxgc.news_app.core.mapper.managerment_system_mapper;


import com.cxgc.news_app.core.model.Manager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *  @author 何其勇
 *  @Version
 *  @Description
 */
public interface ManagerDao {
    
    Manager getManagerByMgrNo(String mgrNo);

    /**
     *
     * @param manager
     * @return 增加行数
     */
    public int addManager(@Param("manager") Manager manager);

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
    public int updateManager(@Param("manager") Manager manager);

    /**
     * 修改管理员密码
     * @param adId
     * @param password
     * @return
     */
    public int updatePassword(@Param("id") int adId, @Param("password") String password);
}



