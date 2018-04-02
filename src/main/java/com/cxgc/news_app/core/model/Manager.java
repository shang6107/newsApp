package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.UserStatus;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;
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
    @NotNull(message = "{Manager.mgrNo.notNull}")
    @Length(min = 4,max = 16,message = "{Manager.mgrNo.length}")
    private String mgrNo;
    private String password;
    private String mgrName;
    @NotNull(message = "{Manager.groups.notNull}")
    private Groups groups;
    private Date lastTime;
    private Date createTime;
    private String remoteAddress;
    private Integer loginCount;
    @NotNull(message = "{Manager.status}")
    private UserStatus status;

}
