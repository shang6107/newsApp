package com.cxgc.news_app.core.services.managerment_service;

import com.cxgc.news_app.core.model.User;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

public interface UserManagementService {
 /**
  * 查询所有用户
  * @return 用户集合
  */
 Object selectAllUser(Integer pageNum, Integer pageSize);

 /**
  * 修改用户状态
  * @param user
  * @return
  */
 int editUserInfo(User user);



 /**
  * 获得用户的信息通过ID
  * @param phoneNum
  * @return
  */
 User getUserByPhoneNum(String phoneNum);


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