package com.cxgc.news_app.model;

import lombok.Data;

import java.util.Date;

@Data
public class News {
    private String id;
    private String url;
    private String type;
    private Integer access_count;
    private Integer  status;
    private Date datetime;

}
