/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.config.security;

import java.util.Collection;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 *
 * @author leesh04@daou.co.kr
 */
//@Component
public class SalesAuthenticationProvider implements AuthenticationProvider {
    
    private static final Logger logs = LoggerFactory.getLogger(SalesAuthenticationProvider.class);
    
    @Resource
    private PasswordEncoder encoder;	// 무슨 용도인지 잘 모르겠음..
    
    //private UserService userService;

 
    /* 로그인 폼에서 데이터를 Spring Security 으로 전송하면 
     * AuthenticationProvider의 authenticate()가 호출되어 인증절차를 진행하는데, 
     * 이 메소드를 개발자가 오버라이드하면 된다.
     * 
     * authenticate() 메소드 오버라이드 규칙
     * - 파라미터로 전달된 authentication 객체에 대해서 인증처리를 지원하지 않는다면 null 을 리턴한다
     * - 인증에 성공하면 이용자의 상세정보를 Authentication 객체에 저장하여 리턴한다
     * - 인증에 실패하면 AuthenticationException 을 던진다
     * - BadCredentialsException, UsernameNotFoundException은 AuthenticationException의 하위 클래스이다
     */
    @Override
    public Authentication authenticate(Authentication auth) throws AuthenticationException {
    	//String username	= (String) auth.getPrincipal();
//    	String empno = (String) auth.getPrincipal();
//    	String passwd = (String) auth.getCredentials();
//    	GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_USER");
//    	Collection<GrantedAuthority> authorities = null;
//    	authorities.add(authority);
//    	System.out.printf("사용자 로그인정보: %s \n", username + "/" + password);
    	
    	//User user = (User) userService.loadUserByUsername(username);
    	//return new UsernamePasswordAuthenticationToken(empno, passwd);
        return null;
    }

    @Override
    public boolean supports(Class<?> type) {
        return type.equals(UsernamePasswordAuthenticationToken.class);
    }
    
}
