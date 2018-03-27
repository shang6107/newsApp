package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.ReleaseStatus;
import lombok.Data;

import java.util.Date;
@Data
public class Release {
    private String id;
    private Date   createTime;
    private String path;
    private String userId;
    private Integer accessCount;
    private NewsType newTypeId;
    private String title;
    private ReleaseStatus status;
}
