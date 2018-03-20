package com.cxgc.news_app.core.model;

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

    private String id;
    private String phoneNum;
    private String nickName;
    private String password;
    private String headImg;
    private Integer gender;
    private String address;
    private String hobby;
    private String introduce;
    private Date lastTime;
    private String typeName;
    private Date createTime;

}
