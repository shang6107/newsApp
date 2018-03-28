package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.core.config.security.MyManagerDetails;
import com.cxgc.news_app.core.mapper.managerment_system_mapper.ManagerDao;
import com.cxgc.news_app.core.model.Authorities;
import com.cxgc.news_app.core.model.Manager;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 上官炳强
 * @Date 2018-03-25 / 12:03:45
 * @Version
 * @Description
 * 		继承 UserDetailsService 接口，并将该类提供给 authentication-provider
 * 	 通过指定 dao 获取用户相关数据，  {@link CustomManagerDetailsService#
 * 	 loadUserByUsername(java.lang.String)} 方法提供一个简单的数据支持
 */
@Service
@Slf4j
public class CustomManagerDetailsService implements UserDetailsService{

	@Autowired
	private ManagerDao managerDao;
	/**
	 * 		基于 managerNo 分配一个用户，在真实的实现类中，搜索该用户可能是敏感的，也可能不是
	 * 	，关键在于实现类如何进行配置。介于此 ，<code>UserDetails</code> 的回调信息可能与真实的
	 * 	请求不符。所以有必要对 <code>UserDetails</code> 接口重写，并配置自己需要的属性( Dao Object
	 * 	获取到的数据)。
	 * @param mgrNo
	 * @return
	 * @throws UsernameNotFoundException
	 */
	public UserDetails loadUserByUsername(String mgrNo)
			throws UsernameNotFoundException {

		//从数据库获取 manager 对应的数据
		Manager manager = managerDao.getManagerByMgrNo(mgrNo);
		if(manager==null){
			log.debug("User not found from mgrNo : {}",manager);
			throw new UsernameNotFoundException("MgrNo not found");
		}

		// 实现的 UserDetails 接口的类，将数据库数据注入到该类的数据库数据的属性中
		MyManagerDetails myUserDetails = new MyManagerDetails(
				manager,										// database data
				manager.getPassword(),
				manager.getMgrNo(),
				getGrantedAuthorities(manager),				// get GrantedAuthorities
				true,						// is Expired
				true,		//dao data		// is Locked
				true,					// is Expired(credentials)
				true								// is Enabled
		);
		return myUserDetails;
	}

	/**
	 *		为 UserDetails 添加权限、角色等信息。
	 *	添加角色信息时，要在角色名前加上 "ROLE_" 前缀，对应 access 的规则为 hasRole()
	 * @param manager
	 * @return
	 */
	private List<GrantedAuthority> getGrantedAuthorities(Manager manager){
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		if(manager.getGroups() != null) {
			authorities.add(new SimpleGrantedAuthority("ROLE_" + manager.getGroups().getGroupName()));
			if (manager.getGroups().getAuthorities() != null)
				for (Authorities authorities1 : manager.getGroups().getAuthorities()) {
					authorities.add(new SimpleGrantedAuthority(authorities1.getAuthoritiesName()));
				}
		}

		return authorities;
	}
	
}
