package com.cxgc.news_app.model;

import lombok.Data;

import java.util.Date;

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
