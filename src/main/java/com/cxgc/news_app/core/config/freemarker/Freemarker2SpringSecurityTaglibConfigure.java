package com.cxgc.news_app.core.config.freemarker;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.util.Arrays;
import java.util.List;

/**
 * @author 上官炳强
 * @Date 2018-03-27 / 01:48:46
 * @Version
 * @Description
 */
public class Freemarker2SpringSecurityTaglibConfigure {
    private static final String SECURITY_TLD = "classpath:conf/security.tld";

    final private List<String> classPathTlds;

    public Freemarker2SpringSecurityTaglibConfigure(String... classPathTld) {
        if(ArrayUtils.isEmpty(classPathTld)){
            this.classPathTlds = Arrays.asList(SECURITY_TLD);
        }else{
            this.classPathTlds = Arrays.asList(classPathTld);
        }
    }
    @Autowired
    private FreeMarkerConfigurer freeMarkerConfigurer;

}
