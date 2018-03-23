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
    private String id;//新闻ID
    private String url;//网络路径
    private String type;//新闻类型
    private Integer accessCount;//访问量
    private Integer  status;//状态
    private Date createTime;//创建时间

}
