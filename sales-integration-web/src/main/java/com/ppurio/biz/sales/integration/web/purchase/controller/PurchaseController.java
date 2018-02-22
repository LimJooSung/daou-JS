/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.purchase.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Controller
public class PurchaseController {
    
    private static final Logger logs = LoggerFactory.getLogger(PurchaseController.class);
    
    /**
     * 매출 조회
     * @return
     */
    @GetMapping("/purchaseReference.do")
    String purchaseReference(){
        return "/purchase/purchase_reference";
    }
    
    /**
     * 선수수익 관리
     * @return
     */
    @GetMapping("/purchaseRevenueManagement.do")
    String purchaseRevenueManagement(){
        return "/purchase/purchase_revenueManagement";
    }
    
    /**
     * 선수수익 관리(조회된 페이지)
     * @return
     */
    @GetMapping("/purchaseRevenueManagementConfirm.do")
    String purchaseRevenueManagementConfirm(){
        return "/purchase/purchase_revenueManagement_confirm";
    }
    
    /**
     * 영업대행사 매출관리
     * @return
     */
    @GetMapping("/purchaseAgencysalesManagement.do")
    String purchaseAgencysalesManagement(){
        return "/purchase/purchase_agencysalesManagement";
    }
    
    /**
     * 예상매입 조회
     * @return
     */
    @GetMapping("/purchasePurchaseSearch.do")
    String purchasePurchaseSearch(){
        return "/purchase/purchase_purchaseSearch";
    }
    
    /**
     * 매입대사
     * @return
     */
    @GetMapping("/purchasePurchaseList.do")
    String purchasePurchaseList(){
        return "/purchase/purchase_purchaseList";
    }

}
