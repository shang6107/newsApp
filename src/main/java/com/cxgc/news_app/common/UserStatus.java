package com.cxgc.news_app.common;

import java.util.HashMap;
import java.util.Map;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:00:31
 * @Version 1.0
 * @Description 用户状态
 */
public enum UserStatus  {

    FREEZE(1, "冻结"),

    ABNORMAL(2, "异常"),

    NORMAL(3, "正常"),

    INVALID(4, "失效");

    private Integer status;
    private String reason;

    UserStatus(Integer status,String reason){
        this.reason = reason;
        this.status = status;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getReason() {
        return reason;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getStatus() {
        return status;
    }

    public static UserStatus getUserStatusByStatus(Integer status){
        for(UserStatus userStatus : UserStatus.values()){
            if(userStatus.status.equals(status)){
                return userStatus;
            }
        }
        return null;
    }
}
