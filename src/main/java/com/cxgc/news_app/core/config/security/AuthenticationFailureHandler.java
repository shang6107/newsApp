package com.cxgc.news_app.core.config.security;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 上官炳强
 * @Date 2018-04-02 / 10:07:35
 * @Version
 * @Description     表单认真失败的处理类
 */
public class AuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    private String defaultFailureUrl;
    private String accountStatusAbnormalUrl;
    private String unAuthenticatedUrl;

    public String getDefaultFailureUrl() {
        return defaultFailureUrl;
    }

    @Override
    public void setDefaultFailureUrl(String defaultFailureUrl) {
        this.defaultFailureUrl = defaultFailureUrl;
    }

    public String getAccountStatusAbnormalUrl() {
        return accountStatusAbnormalUrl;
    }

    public void setAccountStatusAbnormalUrl(String accountStatusAbnormalUrl) {
        this.accountStatusAbnormalUrl = accountStatusAbnormalUrl;
    }

    public String getUnAuthenticatedUrl() {
        return unAuthenticatedUrl;
    }

    public void setUnAuthenticatedUrl(String unAuthenticatedUrl) {
        this.unAuthenticatedUrl = unAuthenticatedUrl;
    }

    public AuthenticationFailureHandler(String defaultFailureUrl, String accountStatusAbnormalUrl, String unAuthenticatedUrl) {
        this.defaultFailureUrl = defaultFailureUrl;
        this.accountStatusAbnormalUrl = accountStatusAbnormalUrl;
        this.unAuthenticatedUrl = unAuthenticatedUrl;
    }

    public AuthenticationFailureHandler() {
    }

    /**
     * 登录页面登录验证失败处理方法
     *
     * @param request
     * @param response
     * @param exception
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {

        //认证失败时，判断指定的跳转页面是否为空,为空跳转到默认403页面
        if (defaultFailureUrl == null && unAuthenticatedUrl == null && accountStatusAbnormalUrl == null) {
            logger.debug("No failure URL set, sending 401 Unauthorized error");

            response.sendError(HttpServletResponse.SC_UNAUTHORIZED,
                    "Authentication Failed: " + exception.getMessage());
        //不为空时
        } else {
            String tempPath = "";
            //判断 FilterChain 过程内出现的异常，来制定转发策略
            if(exception instanceof LockedException){   //账户锁定异常，跳转到 accountStatusUnnormalUrl
                tempPath = accountStatusAbnormalUrl;
            }else if(exception instanceof BadCredentialsException){ //证书验证失败异常，跳转到 defaultFailureUrl
                tempPath = defaultFailureUrl;
            }else {
                tempPath = unAuthenticatedUrl;//其他的，跳转到 unAuthenticatedUrl
            }

            //保存异常情况到域中
            saveException(request, exception);
            //转发
            request.getRequestDispatcher((tempPath != null ? tempPath : defaultFailureUrl))
                    .forward(request, response);
        }
    }
}
