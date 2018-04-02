package com.cxgc.news_app.core.config.security;

import com.cxgc.news_app.core.model.Manager;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

/**
 * @author 上官炳强
 * @since 2018-03-25 / 12:03:45
 * @version
 *      在默认的 {@link UserDetails} 中，无法将数据库详细信息返回给请求，因此实现并扩展了
 *   该类，并在该类中添加了一个真实的数据库真实信息的属性:<strong> domain </strong>,在页面
 *   可以通过 {@link SecurityContextHolder} 获取该属性
 */
@ToString(exclude = {"password","domain"})
@Data
@AllArgsConstructor
public class MyManagerDetails implements UserDetails {

    private Manager domain;
    private String password;
    private String mgrNo;
    private final List<GrantedAuthority> authorities;
    private final boolean accountNonExpired;
    private final boolean accountNonLocked;
    private final boolean credentialsNonExpired;
    private final boolean enabled;

    @Override
    public String getUsername() {
        return this.domain == null ? null : domain.getMgrName();
    }
}
