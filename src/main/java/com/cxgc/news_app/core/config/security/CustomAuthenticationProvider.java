package com.cxgc.news_app.core.config.security;

import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import com.cxgc.news_app.core.services.managerment_service.impl.CustomManagerDetailsService;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;


/**
 * @author 上官炳强
 * @Date 2018-03-25 / 03:49:50
 * @Version
 * @Description 自定义的    Authentication Provider .
 * 提供密码加密，盐值加密 ，判断表单密码等功能的类
 */
@Data
@Slf4j
public class CustomAuthenticationProvider extends AbstractUserDetailsAuthenticationProvider {

    /**
     * 调用   com.security.service.impl.CustomUserDetailsService#loadUserByUsername(java.lang.String) 方法加载数据库对象
     */
    private UserDetailsService userDetailsService;
    private PasswordEncoder passwordEncoder;
    private Boolean isEncoder = Boolean.TRUE;

    /**
     *  获取数据库中的数据
     * @param username
     * @param authentication
     * @return  返回数据库得到的对象
     * @throws AuthenticationException
     */


    /**
     * 判断数据库密码数据是否和表单的密码字段一致
     * @param userDetails
     * @param authentication
     * @throws AuthenticationException
     */
    @Override
    protected void additionalAuthenticationChecks(UserDetails userDetails, UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
        //获取表单密码
        String presentedPassword = authentication/*令牌对象*/.getCredentials()/*密码*/.toString();
        //密码判断(使用加密判断)
        boolean result = false;
        if(isEncoder){
            //将数据库获取的密码和页面证书进行加密比对
            result = passwordEncoder.matches(presentedPassword,userDetails.getPassword());
        }else{
            //直接比对
            result = presentedPassword.equals(userDetails.getPassword());
        }
        if(!result){
            log.info("com.cxgc.news_app.core.config.security." +
                    "CustomAuthenticationProvider.badCredentials : 错误的证书");
            throw new BadCredentialsException(messages.getMessage(
                    "CustomAuthenticationProvider.badCredentials",
                    "错误的证书"));
        }

        //证书验证通过后，修改登录时间
        ((CustomManagerDetailsService)userDetailsService).updateLastLoginTime(
                ((MyManagerDetails)userDetails).getMgrNo()
        );

    }

    /**
     * 为后续的 FilterChain 提供 Authentication(UsernamePasswordAuthenticationToken)
     * @param authentication
     * @return
     * @throws AuthenticationException
     */
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        //得到自定义的 AuthenticationDetails 对象
        CustomWebAuthenticationDetails details =
                (CustomWebAuthenticationDetails) authentication.getDetails();
        //获取表单的非 username 和 password 数据
        String token = details.getToken();
        //获取表单的证书(密码)
        String credentials = (String) authentication.getCredentials();
        //获取数据库取得的数据
        MyManagerDetails manager =
                (MyManagerDetails)
                        retrieveUser(authentication.getName(), (UsernamePasswordAuthenticationToken) authentication);
        //密码验证
        additionalAuthenticationChecks(manager, (UsernamePasswordAuthenticationToken) authentication);
        return createSuccessAuthentication(manager, authentication, manager);
    }

    @Override
    protected UserDetails retrieveUser(String username, UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
        return userDetailsService.loadUserByUsername(username);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
