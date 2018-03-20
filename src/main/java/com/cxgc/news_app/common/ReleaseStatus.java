package com.cxgc.news_app.common;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 02:42:25
 * @Version 1.0
 * @Description 新闻提交状态审核
 */
public enum ReleaseStatus {

    EXAMINING(1,"审核中"),

    PASS(2,"审核通过"),

    FAIL(3,"审核未通过"),

    PUBLISHED(4,"已发布");

    private Integer status;
    private String reason;

    ReleaseStatus(Integer status,String reason){
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
