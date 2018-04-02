package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.UserStatus;
import lombok.Data;

import java.util.Date;
/**
 * @author 上官炳强
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 管理员实体类
 */
@Data
public class Manager {
    private String id;
    private String headImg;
    private String mgrNo;
    private String password;
    private String mgrName;
    private Groups groups;
    private Date lastTime;
    private Date createTime;
    private String remoteAddress;
    private Integer loginCount;
    private UserStatus status;

}
