/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.index.controller;

import com.ppurio.biz.sales.integration.commons.util.GoogleOTP;


import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Controller
public class IndexController {

    private static final Logger logs = LoggerFactory.getLogger(IndexController.class);

    @Resource
    GoogleOTP googleOTP;

    /**
     * @TODO redirect uri
     */
    @GetMapping("/index.do")
    String root() {
        return "index";
    }

}
