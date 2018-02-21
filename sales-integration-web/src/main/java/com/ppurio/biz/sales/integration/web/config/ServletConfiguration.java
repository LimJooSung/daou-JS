/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.config;

import com.ppurio.biz.sales.integration.commons.util.GoogleOTP;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Configuration
public class ServletConfiguration {


/**
 * 1. static 리소스 404오류
 * 2. freemarker error 페이지 출력 안됨
 * @return 
 */    
//    @Bean
//    ServletRegistrationBean dispatcherRegistration(
//                            DispatcherServlet dispatcherServlet,
//                            MultipartConfigElement multipartConfig) {
//        ServletRegistrationBean registration = new ServletRegistrationBean(dispatcherServlet);
//        registration.addUrlMappings("*.do");
//        registration.setMultipartConfig(multipartConfig);
//        registration.setAsyncSupported(true);
//        return registration;
//    }

    @Bean
    GoogleOTP googleOTP() {
        /**
         * @TODO #getQRBarcodeURL 각 장비별 OTP 이름 구분
         */
        return new GoogleOTP();
    }
}
