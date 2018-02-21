/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.config;

import com.ppurio.biz.sales.integration.commons.aop.ElapsedTimeMonitor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 파일명을 AopConfiguration, AspectConfiguration로 지정하면 Aspect 구동이 되지 않는다.
 * (SpringBoot AutoConfiguration과 충돌)
 * @author leesh04@daou.co.kr
 */
@Configuration
public class ElapsedTimeConfiguration {

    /**
     * Controller 실행시간 모니터링
     * @return 
     */
    @Bean
    ElapsedTimeMonitor controllerElapsedTimeMonitor() {
        return new ElapsedTimeMonitor(1000L);
    }
    
    @Bean
    ElapsedTimeMonitor queryElapsedTimeMonitor(){
        return new ElapsedTimeMonitor(3000L);
    }
}
