package com.cxgc.news_app.core.model;

import lombok.Data;

import java.util.Date;
/**
 * @author 上官炳强
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 新闻实体类
 */
@Data
public class News {
    private String id;
    private String url;
    private String type;
    private Integer access_count;
    private Integer  status;
    private Date datetime;

}
