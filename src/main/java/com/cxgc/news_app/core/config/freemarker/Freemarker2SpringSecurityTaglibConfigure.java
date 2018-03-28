package com.cxgc.news_app.core.config.freemarker;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

/**
 * @author 上官炳强
 * @Date 2018-03-27 / 01:48:46
 * @Version
 * @Description freemarker 整合 Spring Security taglib 配置类
 */
//@Component
public class Freemarker2SpringSecurityTaglibConfigure {
    private static final String SECURITY_TLD = "WEB-INF/freemarker/security.tld";

    private List<String> classPathTlds;

    public Freemarker2SpringSecurityTaglibConfigure() {
    }

    public Freemarker2SpringSecurityTaglibConfigure(String... classPathTlds) {
        if(ArrayUtils.isEmpty(classPathTlds)){
            this.classPathTlds = Arrays.asList(SECURITY_TLD);
        }else{
            this.classPathTlds = Arrays.asList(classPathTlds);
        }
    }

    @Resource(name = "freemarkerConfig")
    private FreeMarkerConfigurer freeMarkerConfigurer;

    @PostConstruct
    public void loadClassPathTlds() {
        freeMarkerConfigurer.getTaglibFactory().setClasspathTlds(classPathTlds);
    }

}
