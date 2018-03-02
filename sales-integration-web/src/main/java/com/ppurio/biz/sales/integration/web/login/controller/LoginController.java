/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Controller
public class LoginController {
    
    private static final Logger logs = LoggerFactory.getLogger(LoginController.class);
    
    /**
     * 로그인 페이지로 이동
     * @return
     */
    @GetMapping("/login.do")
    String login(){
        return "/login/form";
    }
    
    /**
     * 로그아웃
     * 세션은 SpringSecurity에 의해 자동으로 세션 삭제
     * @return
     */
    @GetMapping("/logout.do")
    String logout(){
    	return "/sub/index";
    }
    
    /**
     * 로그인 절차
     * 
     * SalesSecurityConfigurer 클래스에서 .formLogin().loginProcessingUrl("/loginProc.do")
     * 을 명시해준 것 같은데, form에서 전달된 값이 SalesSecurityConfigurer의 configureGlobal 해당하면
     * SalesAuthenticationSuccessHandler로 바로 넘어감. /loginProc.do의 의미가 없어지는걸로 보임
     * SalesAuthenticationSuccessHandler의 onAuthenticationSuccess함수에서 loginProc.do url을 넘기면
     * Post 방식이라 405 에러 발생.
     * loginSuccess.do를 Get 방식으로 따로 만들어서 onAuthenticationSuccess함수에서 url을 넘겨줌 
     * (맞는 방법인지 의문)
     * @return
     */
//    @PostMapping("/loginProc.do")
//    String loginProc(){
//        return "/sub/index";	// 임시로 sub/index 페이지로 이동
//    }
    
    /**
     * SpringSecurity에서 인증에 성공하면 넘어가는 페이지
     * onAuthenticationSuccess함수에서 생성한 세션 여부를 확인하여 View로 전달
     * @return
     */
    @GetMapping("/loginSuccess.do")
    String loginSuccess(Model model, HttpServletRequest request){
    	HttpSession session = request.getSession(false);
//    	System.out.println("세션: " + session);
//    	if (session != null) {
//    		System.out.println("세션: " + session.getAttribute("empno") + ", " + session.getAttribute("passwd"));
//        	model.addAttribute("userSession", session);
//    	} 
    	return "/sub/index";	// sub/index 페이지로 이동
    }

}
