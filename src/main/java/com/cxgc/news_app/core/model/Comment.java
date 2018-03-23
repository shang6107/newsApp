package com.cxgc.news_app.core.model;

import lombok.Data;

import java.util.Date;

/**
 * @author 何其勇
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 用户收藏类
 */
@Data
public class Comment {
    private String id;
    private String content;
    private Integer goodCount;
    private News newsId;
    private String userId;
    private Date createTime;
}
