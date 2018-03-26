package com.cxgc.news_app.common;

import com.cxgc.news_app.utility.BaseEnum;

import java.util.HashMap;
import java.util.Map;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:00:31
 * @Version 1.0
 * @Description 用户状态
 */
public enum UserStatus implements BaseEnum<UserStatus, Integer> {

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

    static Map<Integer, UserStatus> enumMap = new HashMap();

    static {
        for (UserStatus type : UserStatus.values()) {
            enumMap.put(type.getStatus(), type);
        }
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

    public static UserStatus getEnum(String value) {
        return enumMap.get(value);
    }
}
