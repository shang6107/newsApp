package com.cxgc.news_app.common;

import com.cxgc.news_app.core.model.User;

public enum UserType {

    OrdinaryUser("普通用户"),

    Editor("编辑人员");

    public static UserType getUserTypeByType(String type){
        for(UserType ut : UserType.values()){
            if(ut.getType().equals(type))
                return ut;
        }
        return null;
    }

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
