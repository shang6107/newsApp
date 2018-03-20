package com.cxgc.news_app.core.model;

import lombok.Data;

/**
 * @author 何其勇
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 用户收藏类
 */
@Data
public class Collections {
    private String id;
    private String releaseId;
    private String newsId;
    private String userId;
    private String createTime;
}
