package com.cxgc.news_app.core.model;

import lombok.Data;

import java.util.Date;

/**
 * @author 何其勇
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 手机短信验证码类
 */
@Data
public class ValidateCode {
    private String id;
    private String code;
    private String phoneNum;
    private Date expireTime;
    private Integer usable;
    private Integer sent;
    private Date createTime;

}
