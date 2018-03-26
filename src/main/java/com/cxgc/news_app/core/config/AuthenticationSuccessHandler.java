package com.cxgc.news_app.core.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/**
 * @author 上官炳强
 * @Date 2018-03-25 / 03:54:02
 * @Version
 * @Description     处理认证、授权成功后的重定向策略类
 */
@Slf4j
@Component
public class AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException {
        String targetUrl = determineTargetUrl(authentication);

        if (response.isCommitted()) {
            log.debug("Can't redirect");
            return;
        }
        targetUrl = request.getContextPath()  + /**/   targetUrl;
        log.info("Redirect target : {}" , targetUrl);
        redirectStrategy.sendRedirect(request, response, targetUrl);
    }

    protected String determineTargetUrl(Authentication authentication) {
        String url = "";

        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

        List<String> roles = new ArrayList<String>();

        for (GrantedAuthority a : authorities) {
            roles.add(a.getAuthority());
        }

        if (isRoot(roles)) {
            url = "/root_index.html";
        } else if (isNews(roles)) {
            url = "/news_index.html";
        } else if (isUser(roles)) {
            url = "/user_index.html";
        } else {
            url = "/403.html";
        }


        return url;
    }

    private boolean isUser(List<String> roles) {
        return roles.contains("ROLE_用户管理员");
    }

    private boolean isRoot(List<String> roles) {
        return roles.contains("ROLE_超级管理员");
    }

    private boolean isNews(List<String> roles) {
        return roles.contains("ROLE_新闻管理员");
    }

    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    protected RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }
}
