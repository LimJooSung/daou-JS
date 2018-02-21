/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.config.security;

import javax.annotation.Resource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

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

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .headers()
                .frameOptions().disable()
                .and()
            .csrf()
                .ignoringAntMatchers("/webjars/**", "/css/**", "/js/**", "/images/**")
                .and()
            .authorizeRequests()
                //.antMatchers("/sub/**")
                //.access("hasRole('USER') and hasIpAddress('192.168.1.0/24')")
                //.anyRequest().fullyAuthenticated()
//                .anyRequest().authenticated()
                .anyRequest().permitAll()
                .and()                  
            .formLogin()
                .loginPage("/login.do").permitAll()
                .usernameParameter("empno")
                .passwordParameter("passwd")
                .loginProcessingUrl("/loginProc.do")
                .successHandler(authenticationSuccessHandler)
                .failureHandler(authenticationFailureHandler)
                .failureUrl("/login.do?error")
                .and()
            .logout()
                .logoutUrl("/logout.do")
                .logoutSuccessUrl("/")
                .logoutSuccessHandler(logoutSuccessHandler)
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID", "SESSION")
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
