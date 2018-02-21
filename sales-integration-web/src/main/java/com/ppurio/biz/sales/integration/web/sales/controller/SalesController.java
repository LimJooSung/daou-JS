/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.sales.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Controller
public class SalesController {
    
    private static final Logger logs = LoggerFactory.getLogger(SalesController.class);
    
    @GetMapping("/salesPerformanceAdminMonth.do")
    String salesPerformanceAdminMonth(){
        return "/sales/sales_performanceAdmin_month";
    }
    
    @GetMapping("/salesPerformanceAdminTeam.do")
    String salesPerformanceAdminTeam(){
        return "/sales/sales_performanceAdmin_team";
    }
    
    @GetMapping("/salesReferenceRoom.do")
    String salesReferenceRoom(){
        return "/sales/sales_referenceRoom";
    }
    
    @GetMapping("/salesPawn.do")
    String salesPawn(){
        return "/sales/sales_pawn";
    }

}
