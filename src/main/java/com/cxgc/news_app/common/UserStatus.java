package com.cxgc.news_app.common;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:00:31
 * @Version
 * @Description
 */
public enum UserStatus {

    FREEZE(1,"冻结"),

    ABNORMAL(2,"异常"),

    NORMAL(3,"正常"),

    INVALID(4,"失效");

    private Integer status;
    private String reason;

    UserStatus(Integer status,String reason){
        this.status = status;
        this.reason = reason;
    }

    public Integer getStatus() {
        return status;
    }

    public String getReason() {
        return reason;
    }

    @Override
    public String toString() {
        return Integer.toString(this.status);
    }

}
