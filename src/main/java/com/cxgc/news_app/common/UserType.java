package com.cxgc.news_app.common;


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

    private String type;

    UserType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
