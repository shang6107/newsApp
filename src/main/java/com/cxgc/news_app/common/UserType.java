package com.cxgc.news_app.common;

public enum UserType {

    OrdinaryUser("普通用户"),

    Editor("编辑人员");

    private final String type;

    private UserType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return getType();
    }
}
