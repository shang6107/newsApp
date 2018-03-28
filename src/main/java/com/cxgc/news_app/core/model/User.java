package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.common.UserType;
import lombok.Data;

import java.util.Date;
/**
 * @author 上官炳强
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 用户实体类
 */
@Data
public class User {

    private String id;//用户主键
    private String phoneNum;//电话号码
    private String nickName;//昵称
    private String password;//密码
    private String headImg;//用户头像地址
    private Integer gender;//性别
    private String address;//住址
    private String hobby;//爱好
    private Date brith;//生日
    private String introduce;//个人介绍
    private Date lastTime;//上次登陆时间
    private UserType typeName;//用户类型
    private Date createTime;//创建时间
    private UserStatus status;

}
