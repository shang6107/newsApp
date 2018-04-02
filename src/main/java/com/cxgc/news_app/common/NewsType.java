package com.cxgc.news_app.common;

/**
 * @author 上官炳强
 * @Date 2018-03-30 / 06:47:22
 * @Version
 * @Description
 */
public enum  NewsType {

    SOCIOLOGY("社会",1),
    SPORT("体育",2),
    ENTERTAINMENT("娱乐",3),
    FINANCE("财经",4),
    TECHNOLOGY("科技",5);

    private String typeName;
    private Integer typeCode;

    private NewsType(String typeName,Integer typeCode){
        this.typeCode = typeCode;
        this.typeName = typeName;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Integer getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(Integer typeCode) {
        this.typeCode = typeCode;
    }

    public static NewsType getNewsTypeByTypeName(String typeName){
        for(NewsType newsType : NewsType.values()){
            if(newsType.getTypeName().equals(typeName)){
                return newsType;
            }
        }
        return null;
    }
    public static NewsType getNewsTypeByTypeCode(Integer typeCode){
        for(NewsType newsType : NewsType.values()){
            if(newsType.getTypeCode().equals(typeCode)){
                return newsType;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
