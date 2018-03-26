package com.cxgc.news_app.utility;

/**
 * @author 上官炳强
 * @Date 2018-03-26 / 05:11:52
 * @Version
 * @Description
 */
public interface BaseEnum<E extends Enum<?>, T>{
    T getStatus();
    String getReason();
}
