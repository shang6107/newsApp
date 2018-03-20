package com.cxgc.news_app.core.model;

import lombok.Data;

import java.util.Date;

/**
 * @author 何其勇
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 用户举报类
 */
@Data
public class Report {
    private String id;
    private String reporterId;
    private String reportedId;
    private String reportedContent;
    private Date createTime;
}
