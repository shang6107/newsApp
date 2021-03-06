package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.common.UserType;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date birth;//生日
    private String introduce;//个人介绍
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date lastTime;//上次登陆时间
    private UserType typeName;//用户类型
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;//创建时间
    private UserStatus status;

}
