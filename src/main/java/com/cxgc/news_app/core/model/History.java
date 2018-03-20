package com.cxgc.news_app.core.model;

import lombok.Data;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 历史收藏实体类
 */
@Data
public class History {
    private String id;
    private String releaseId;
    private String newsId;
    private String userId;
    private String createTime;


}
