package com.cxgc.news_app.common;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author 上官炳强
 * @Date 2018-04-03 / 01:22:58
 * @Version
 * @Description
 */
public enum WorkType {
    NEWS_ABOUT("新闻相关",new ArrayList<>(Arrays.asList("新闻审核", "新闻管理", "新闻数据统计", "新闻发布")), 1),
    USER_ABOUT("用户相关",new ArrayList<>(Arrays.asList("用户类型审核", "用户管理", "用户数据统计")), 2),
    APP_DATA("应用程序相关",new ArrayList<>(Arrays.asList("APP数据统计", "APP系统维护")), 3);
    private List<String> workDetails;
    private Integer no;
    private String name;
    WorkType(String name,List<String> workDetails, Integer no) {
        this.no = no;
        this.workDetails = workDetails;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getWorkDetails() {
        return workDetails;
    }

    public void setWorkDetails(List<String> workDetails) {
        this.workDetails = workDetails;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public static WorkType getWorkTypeByName(String name){
        for(WorkType workType : WorkType.values()){
            if(workType.getName().equals(name)){
                return workType;
            }
        }
        return null;
    }

    public static WorkType getWorkTypeByWorkNo(Integer no){
        for(WorkType workType : WorkType.values()){
            if(workType.getNo().equals(no)){
                return workType;
            }
        }
        return null;
    }

    public static WorkType getWorkTypeByWorkDetails(List<String> workDetail) {
        String temp1 = null, temp2 = null;
        for (String works : workDetail) {
            temp1 += works;
        }
        for (WorkType workType : WorkType.values()) {
            for (String works : workType.getWorkDetails()) {
                temp2 += works;
            }
            if(temp1 != null && temp2 != null && temp1.equals(temp2)){
                return workType;
            }
        }
        return null;
    }
}
