package com.cxgc.news_app.core.config.security;

import org.springframework.security.authentication.AuthenticationDetailsSource;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 上官炳强
 * @Date 2018-03-25 / 03:54:02
 * @Version
 * @Description
 */
@Component
public class CustomAuthenticationDetailsSource
        implements AuthenticationDetailsSource<HttpServletRequest,WebAuthenticationDetails> {
    @Override
    public WebAuthenticationDetails buildDetails(HttpServletRequest context) {
        return new CustomWebAuthenticationDetails(context);
    }
}
