package com.cxgc.news_app.core.model;

import lombok.Data;

import java.util.Date;

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
    // ly  修改数据类型 String --> News
    private News news;
    private String userId;
    // ly  修改数据类型 String --> Date
    private Date createTime;


}
