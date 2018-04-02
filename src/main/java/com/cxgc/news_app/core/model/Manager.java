package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.UserStatus;
import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

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
    @NotEmpty(message = "不能为\"\"")
    @Length(min = 4,max = 16,message = "{Manager.mgrNo.length}")
    private String mgrNo;
    @NotNull(message = "{Manager.password.notNull}")
    @NotEmpty(message = "不能为\"\"")
    private String password;
    @NotNull(message = "{Manager.mgeName.notNull}")
    @NotEmpty(message = "不能为\"\"")
    private String mgrName;
    private Groups groups;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date lastTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date createTime;
    private String remoteAddress;
    private Integer loginCount;
    private UserStatus status;

}
