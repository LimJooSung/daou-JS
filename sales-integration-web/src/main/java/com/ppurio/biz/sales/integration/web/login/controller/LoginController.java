/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
     * 로그인 절차 (추후 post 방식으로 수정 예정)
     * @return
     */
    @GetMapping("/loginProc.do")
    String loginProc(){
        return "/sub/index";	// 임시로 sub/index 페이지로 이동
    }

}
