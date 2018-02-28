/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.customer.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.ppurio.biz.sales.integration.web.customer.vo.CustomerMember;

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
    String customerMemberList(@ModelAttribute("model") ModelMap model){	// Model model로 할 시에는 에러 발생.. why?
    	// 현재 DB에 저장된 값을 이용하는게 아니므로 ArrayList에
    	// 임시로 값을 저장한 후, 이를 이용하여 freemarker template에서 출력해본다.
    	ArrayList<CustomerMember> customerMemberList = new ArrayList<CustomerMember>();
    	
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓢdaoutest", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "유"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdaou", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdodo", "비즈뿌리오", "도도", "재판매(에이전트)", 
    					"후불", "발송 가능", "MSG2", "윤수지", "growin", "유"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdodo", "비즈뿌리오", "도도", "재판매(에이전트)", 
    					"후불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdaou", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓢdaoutest", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "유"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdaou", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdodo", "비즈뿌리오", "도도", "재판매(에이전트)", 
    					"후불", "발송 가능", "MSG2", "윤수지", "growin", "유"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdodo", "비즈뿌리오", "도도", "재판매(에이전트)", 
    					"후불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdaou", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓢdaoutest", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "유"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdaou", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdodo", "비즈뿌리오", "도도", "재판매(에이전트)", 
    					"후불", "발송 가능", "MSG2", "윤수지", "growin", "유"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdodo", "비즈뿌리오", "도도", "재판매(에이전트)", 
    					"후불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	customerMemberList.add(
    			new CustomerMember("2017.09.12", "ⓜdaou", "비즈뿌리오", "다우기술", "직판(일반)", 
    					"선불", "발송 가능", "MSG2", "윤수지", "-", "무"));
    	
//    	for (int i=0; i<customerMemberList.size(); i++) {
//    		System.out.println(customerMemberList.get(i));
//    	}
    	
    	model.addAttribute("customerMemberList", customerMemberList);	// model에 값을 넣어 view로 전달
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
     * 발신번호 한도
     * @return
     */
    @GetMapping("/customerUserCallerbookLimit.do")
    String customerUserCallerbookLimit(){
        return "/customer/customer_userCallerbook_limit";
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
    
    /**
     * 템플릿 그룹 관리
     * @return
     */
    @GetMapping("/customerKakaoBizTempletgroupAdmin.do")
    String customerKakaoBizTempletgroupAdmin(){
        return "/customer/customer_kakaoBiz_templetgroupAdmin";
    }
    
    /**
     * 단가 변경 내역
     * @return
     */
    @GetMapping("/customerMemberListUnitpriHistory.do")
    String customerMemberListUnitpriHistory(){
        return "/customer/customer_memberList_unitpriHistory";
    }
    
    
}
