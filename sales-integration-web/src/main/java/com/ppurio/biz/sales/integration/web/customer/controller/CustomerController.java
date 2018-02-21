/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.customer.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Controller
public class CustomerController {
    
    private static final Logger logs = LoggerFactory.getLogger(CustomerController.class);
    
    @GetMapping("/customerMemberList.do")
    String customerMemberList(){
        return "/customer/customer_memberList";
    }
    
    @GetMapping("/customerBeforeList.do")
    String customerBeforeList(){
        return "/customer/customer_beforeList";
    }
    
    @GetMapping("/customerBeforeListDetail.do")
    String customerBeforeListDetail(){
        return "/customer/customer_beforeList_detail";
    }
    
    @GetMapping("/customerOutmemberList.do")
    String customerOutmemberList(){
        return "/customer/customer_outmemberList";
    }
    
    @GetMapping("/customerCreditManagement.do")
    String customerCreditManagement(){
        return "/customer/customer_creditManagement";
    }
    
    @GetMapping("/customerCreditManagementCreate.do")
    String customerCreditManagementCreate(){
        return "/customer/customer_creditManagement_create";
    }
    
    @GetMapping("/customerCreditManagementChange.do")
    String customerCreditManagementChange(){
        return "/customer/customer_creditManagement_change";
    }
    
    @GetMapping("/customerBuyeradmin.do")
    String customerBuyeradmin(){
        return "/customer/customer_buyeradmin";
    }
    
    @GetMapping("/customerBuyeradminApply.do")
    String customerBuyeradminApply(){
        return "/customer/customer_buyeradminApply";
    }
    
    @GetMapping("/customerManualDeposit.do")
    String customerManualDeposit(){
        return "/customer/customer_manualDeposit";
    }

}
