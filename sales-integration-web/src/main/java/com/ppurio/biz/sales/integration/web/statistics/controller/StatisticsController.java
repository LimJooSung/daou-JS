/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.statistics.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Controller
public class StatisticsController {
    
    private static final Logger logs = LoggerFactory.getLogger(StatisticsController.class);
    
    /**
     * 계정별 발송 통계
     * @return
     */
    @GetMapping("/statisticsAccountStatistics.do")
    String statisticsAccountStatistics(){
        return "/statistics/statistics_accountStatistics";
    }
    
    /**
     * 라인별 발송 통계
     * @return
     */
    @GetMapping("/statisticsLineStatistics.do")
    String statisticsLineStatistics(){
        return "/statistics/statistics_lineStatistics";
    }
    
    /**
     * 발송 내역 조회
     * @return
     */
    @GetMapping("/statisticsSendlistSearch.do")
    String statisticsSendlistSearch(){
        return "/statistics/statistics_sendlistSearch";
    }
    
    /**
     * 발송 추이
     * @return
     */
    @GetMapping("/statisticsSendWatch.do")
    String statisticsSendWatch(){
        return "/statistics/statistics_sendWatch";
    }

}
