package com.cxgc.news_app.core.mapper.managerment_system_mapper;

import com.cxgc.news_app.core.model.User;
import org.apache.ibatis.annotations.MapKey;

import java.util.List;
import java.util.Map;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

public interface UserManagementDao {
/**
     * 查询所有的用户
     * @return 用户的集合
     */

    List<User> selectAllUser();

    /**
     * 修改用户信息
     * @param user
     * @return 用户
     */
    int editUserInfo(User user);

    /**
     * 得到用户信息
     * @param phoneNum
     * @return 用户的全部信息
     */
    User getUserById(String phoneNum);

    /**
     * 统计男性人数
     * @return 总和
     */
    Map<String,Object> countMen();
    /**
     * 统计冻结人数
     * @return 会员总和
     */
    Map<String,Object> countFreeze();

    /**
     * 统计总人数
     * @return 总人数
     */
    Map<String,Object> countAll();

    /**
     * 统计账号失效的人数
     * @return 失效 总人数
     */
    Map<String,Object> countFailure();

    Map<String,Object> test();

    /**
     * 统计被举报人数
     * @return
     */
    Map<String,Object> report();

    /**
     * 统计编辑人员
     * @return
     */
    Map<String,Object> typeName();

    /**
     * 统计异常人员账号
     * @return
     */
    Map<String,Object> abnormal();


}

