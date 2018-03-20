package com.cxgc.news_app.core.model;

import lombok.Data;

import java.util.Date;
@Data
public class Release {
    private String id;
    private Date   createTime;
    private String path;
    private String userId;
    private Integer accessCount;
    private String newTypeId;
    private String title;
    private Integer status;
}
