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
    private String newsId;
    //唐倩 修改数据类型 String--->User
    private User userId;
    private Date createTime;
}
