package com.cxgc.news_app.model;

import lombok.Data;

import java.util.Date;

@Data
public class Manager {
    private String id;
    private String magrNo;
    private String password;
    private String mgrName;
    private String groupsId;
    private Date lastTime;
    private Date createTime;

}
