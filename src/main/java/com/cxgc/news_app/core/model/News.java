package com.cxgc.news_app.core.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import java.util.Date;
import java.util.List;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 新闻实体类
 */
@Data
public class News {
    private String id;//新闻ID
    private String title;//新闻标题
    private String url;//网络路径
    private NewsType type;//新闻类型
    private Integer accessCount;//访问量
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;//创建时间
    private String author;//作者
    private List<String> imgPath;

}
