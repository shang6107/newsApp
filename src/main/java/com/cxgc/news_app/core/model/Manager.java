package com.cxgc.news_app.core.model;

import com.cxgc.news_app.common.UserStatus;
import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.GroupSequence;
import javax.validation.constraints.NotNull;
import java.util.Date;
/**
 * @author 上官炳强
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 管理员实体类
 */
@Data
//@GroupSequence({Group.A.class,Group.B.class})
public class Manager {
    private String id;
    private String headImg;
    @NotNull(message = "{manager.mgrNo.notNull}",groups = Group.A.class)
    @NotEmpty(message = "{manager.mgrNo.notNull}",groups = Group.A.class)
    @Length(min = 4,max = 16,message = "{manager.mgrNo.length}",groups = Group.A.class)
    private String mgrNo;
    @Length(min = 6,max = 16,message = "{manager.password.length}",groups = {Group.A.class,Group.B.class})
    @NotNull(message = "{manager.password.notNull}")
    @NotEmpty(message = "{manager.password.notNull}",groups = {Group.A.class,Group.B.class})
    private String password;
    @NotNull(message = "{manager.mgeName.notNull}",groups = {Group.A.class,Group.B.class})
    @NotEmpty(message = "{manager.mgrName.notNull}",groups = {Group.A.class,Group.B.class})
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
