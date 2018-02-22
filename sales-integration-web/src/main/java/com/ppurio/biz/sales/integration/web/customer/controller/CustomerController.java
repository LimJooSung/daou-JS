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
    
    /**
     * 회원 리스트
     * @return
     */
    @GetMapping("/customerMemberList.do")
    String customerMemberList(){
        return "/customer/customer_memberList";
    }
    
    /**
     * 회원 정보(수정)
     * @return
     */
    @GetMapping("/customerMemberInfo.do")
    String customerMemberInfo(){
        return "/customer/customer_memberInfo";
    }
    
    /**
     * 승인 전 회원 리스트
     * @return
     */
    @GetMapping("/customerBeforeList.do")
    String customerBeforeList(){
        return "/customer/customer_beforeList";
    }
    
    /**
     * 승인 전 회원 리스트 상세보기
     * @return
     */
    @GetMapping("/customerBeforeListDetail.do")
    String customerBeforeListDetail(){
        return "/customer/customer_beforeList_detail";
    }
    
    /**
     * 해지 고객 리스트
     * @return
     */
    @GetMapping("/customerOutmemberList.do")
    String customerOutmemberList(){
        return "/customer/customer_outmemberList";
    }
    
    /**
     * 여신 관리
     * @return
     */
    @GetMapping("/customerCreditManagement.do")
    String customerCreditManagement(){
        return "/customer/customer_creditManagement";
    }
    
    /**
     * 여신 생성
     * @return
     */
    @GetMapping("/customerCreditManagementCreate.do")
    String customerCreditManagementCreate(){
        return "/customer/customer_creditManagement_create";
    }
    
    /**
     * 여신 변경
     * @return
     */
    @GetMapping("/customerCreditManagementChange.do")
    String customerCreditManagementChange(){
        return "/customer/customer_creditManagement_change";
    }
    
    /**
     * 매입처 관리(조회)
     * @return
     */
    @GetMapping("/customerBuyeradmin.do")
    String customerBuyeradmin(){
        return "/customer/customer_buyeradmin";
    }
    
    /**
     * 매입처 관리(등록)
     * @return
     */
    @GetMapping("/customerBuyeradminApply.do")
    String customerBuyeradminApply(){
        return "/customer/customer_buyeradminApply";
    }
    
    /**
     * 수동 입출금
     * @return
     */
    @GetMapping("/customerManualDeposit.do")
    String customerManualDeposit(){
        return "/customer/customer_manualDeposit";
    }
    
    /**
     * 발신번호 승인
     * @return
     */
    @GetMapping("/customerUserCallerbook.do")
    String customerUserCallerbook(){
        return "/customer/customer_userCallerbook";
    }
    
    /**
     * 발신번호 조회
     * @return
     */
    @GetMapping("/customerUserCallerbookSearch.do")
    String customerUserCallerbookSearch(){
        return "/customer/customer_userCallerbook_search";
    }
    
    /**
     * 발신번호 담당자 관리
     * @return
     */
    @GetMapping("/customerUserCallerbookManager.do")
    String customerUserCallerbookManager(){
        return "/customer/customer_userCallerbook_manager";
    }
    
    /**
     * FAX 차단 통계
     * @return
     */
    @GetMapping("/customerUserCallerbookFaxblock.do")
    String customerUserCallerbookFaxblock(){
        return "/customer/customer_userCallerbook_faxblock";
    }
    
    /**
     * 예외사업자 관리
     * @return
     */
    @GetMapping("/customerUserCallerbookException.do")
    String customerUserCallerbookException(){
        return "/customer/customer_userCallerbook_exception";
    }
    
    /**
     * 발신프로필 관리(kakaoBiz)
     * @return
     */
    @GetMapping("/customerKakaoBizSentProfile.do")
    String customerKakaoBizSentProfile(){
        return "/customer/customer_kakaoBiz_sentProfile";
    }

    /**
     * 템플릿/이미지 관리
     * @return
     */
    @GetMapping("/customerKakaoBizTempletApply.do")
    String customerKakaoBizTempletApply(){
        return "/customer/customer_kakaoBiz_templetApply";
    }
    
    /**
     * 템플릿/이미지 관리(등록)
     * @return
     */
    @GetMapping("/customerKakaoBizTempletApplyRegist.do")
    String customerKakaoBizTempletApplyRegist(){
        return "/customer/customer_kakaoBiz_templetApply_regist";
    }
}
