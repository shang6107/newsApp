package com.cxgc.news_app.core.config;

import lombok.ToString;
import org.springframework.security.web.authentication.WebAuthenticationDetails;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author 上官炳强
 * @Date 2018-03-25 / 03:52:05
 * @Version
 * @Description
 */
@ToString
public class CustomWebAuthenticationDetails extends WebAuthenticationDetails {

    /**
     * 自定义表单字段  :   token
     */
    private final String token;
    private final String remoteAddress;
    private final String sessionId;
    /**
     * Records the remote address and will also set the session Id if a session already
     * exists (it won't create one).
     *
     * @param request that the authentication request was received from
     */
    public CustomWebAuthenticationDetails(HttpServletRequest request) {
        super(request);
        HttpSession session = request.getSession(false);
        remoteAddress = request.getRemoteAddr();
        sessionId = (session != null) ? session.getId() : null;
        token = request.getParameter("token");
    }

    @Override
    public String getRemoteAddress() {
        return remoteAddress;
    }

    @Override
    public String getSessionId() {
        return sessionId;
    }

    public String getToken() {
        return token;
    }
}
