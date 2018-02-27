/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.config.security;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

/**
 *
 * @author leesh04@daou.co.kr
 */
@EnableWebSecurity
public class SalesSecurityConfigurer extends WebSecurityConfigurerAdapter {
    
//    @Resource
//    private SalesAuthenticationProvider authenticationProvider;

    @Resource
    private SalesAuthenticationSuccessHandler authenticationSuccessHandler;

    @Resource
    private SalesAuthenticationFailureHandler authenticationFailureHandler;

    @Resource
    private SalesLogoutSuccessHandler logoutSuccessHandler;

    @Override
    public void configure(WebSecurity web) throws Exception {
        /**
         * URI 접근제한 무시(우선 순위가 높음)
         */
        web.ignoring()
                .antMatchers("/webjars/**", "/css/**", "/js/**", "/images/**");
    }
    
    @Autowired
    protected void configureGlobal(final AuthenticationManagerBuilder auth) throws Exception {
        // @formatter:off
        auth.inMemoryAuthentication()
        .passwordEncoder(NoOpPasswordEncoder.getInstance())
        .withUser("user1").password("!dlawn78").roles("ADMIN");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .headers()
                .frameOptions().disable()
                .and()	// .and()는 xml 표현식에서 닫는 표현식의 역할     
            .csrf()
                .ignoringAntMatchers("/webjars/**", "/css/**", "/js/**", "/images/**")
                .and()
            .authorizeRequests()
                //.antMatchers("/sub/**")
                //.access("hasRole('USER') and hasIpAddress('192.168.1.0/24')")
                //.anyRequest().fullyAuthenticated()
//                .anyRequest().authenticated()
                .anyRequest().permitAll()
                .and()		// .and()는 xml 표현식에서 닫는 표현식의 역할           
            .formLogin()	// form login을 가능하게 한다.
                .loginPage("/login.do").permitAll()	// login page의 주소는 /login (permitAll() : 모든 사용자가 접근 가능)
                .usernameParameter("empno")		// username 파라미터
                .passwordParameter("passwd")	// password 파라미터
                .loginProcessingUrl("/loginProc.do")	// login 성공시 url
                .successHandler(authenticationSuccessHandler)
                .failureHandler(authenticationFailureHandler)
                .failureUrl("/login.do?error")	// login 실패시 url
                .and()
            .logout()	// logout 설정을 한다.
                //.logoutUrl("/logout.do")	// logout url 설정
                //.logoutSuccessUrl("/")	// logout성공시 redirect url
                .logoutSuccessHandler(logoutSuccessHandler)	// 이 설정이 있으면 logoutSuccessUrl은 무시된다.
                .invalidateHttpSession(true)	// logout시 세션을 날린다.
                .deleteCookies("JSESSIONID", "SESSION")	// logout시 쿠키를 삭제한다.
                .permitAll()
                .and()
            .headers().frameOptions().sameOrigin()   //smarteditor iframe 삽입을 위한 설정
                .and()
            .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.NEVER)
                .and()
            .httpBasic();
    }
}
