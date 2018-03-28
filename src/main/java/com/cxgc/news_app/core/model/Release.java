package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.ReleaseStatus;
import lombok.Data;

import java.util.Date;
@Data
public class Release {
    private String id;//发布新闻id
    private Date   createTime;//创建时间
    private String path;//存储路径
    private String userId;//发布者id
    private Integer accessCount;//访问数量
    private NewsType newTypeId;//新闻类型
    private String title;//标题
    private ReleaseStatus status;//状态
}
