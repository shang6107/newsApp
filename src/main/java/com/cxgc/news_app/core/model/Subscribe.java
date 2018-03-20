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
public class Subscribe {
    private String id;
    private Integer type;
    private String userId;
    private Date createTime;
}
