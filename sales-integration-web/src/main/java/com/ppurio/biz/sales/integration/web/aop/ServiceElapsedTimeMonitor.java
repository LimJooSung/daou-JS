/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.web.aop;

import com.ppurio.biz.sales.integration.commons.aop.ElapsedTimeMonitor;
import javax.annotation.Resource;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 *
 * @author leesh04@daou.co.kr
 */
@Aspect
@Component
public class ServiceElapsedTimeMonitor {

    private static final Logger logs
            = LoggerFactory.getLogger(ServiceElapsedTimeMonitor.class);

    @Resource
    ElapsedTimeMonitor controllerElapsedTimeMonitor;

    @Resource
    ElapsedTimeMonitor queryElapsedTimeMonitor;

    @Around("execution(* com.ppurio.biz.sales.integration.web..controller.*.*(..))")
    public Object controller(ProceedingJoinPoint pjp) throws Throwable {
        return controllerElapsedTimeMonitor.elapsedTimeMonitor(pjp);
    }

    @Around("execution(* com.ppurio.biz..mapper.*.*(..))")
    public Object mapper(ProceedingJoinPoint pjp) throws Throwable {
        return queryElapsedTimeMonitor.elapsedTimeMonitor(pjp);
    }
}
