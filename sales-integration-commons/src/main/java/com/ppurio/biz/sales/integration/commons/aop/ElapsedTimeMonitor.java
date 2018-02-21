/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.commons.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author leesh04@daou.co.kr
 */
public class ElapsedTimeMonitor {

    private static final Logger logs
            = LoggerFactory.getLogger(ElapsedTimeMonitor.class);

    public static final long DEFALUT_ALARM_TIME_MILLISECOND = 1000L;
    private final long alarmTimeMillisecond;

    public ElapsedTimeMonitor(long alarmTimeMillisecond) {
        this.alarmTimeMillisecond = alarmTimeMillisecond;
    }

    public Object elapsedTimeMonitor(ProceedingJoinPoint pjp) throws Throwable {
        long start = System.currentTimeMillis();
        Object output = pjp.proceed();
        long elapsedTime = System.currentTimeMillis() - start;

        if (elapsedTime > alarmTimeMillisecond) {
            if (logs.isWarnEnabled()) {
                logs.warn("==> Aspect: {} elapsed time is {}ms.",
                        pjp.getSignature().toShortString(), elapsedTime);
            }
        } else {
            if (logs.isDebugEnabled()) {
                logs.debug("==> Aspect: {} elapsed time is {}ms.",
                        pjp.getSignature().toShortString(), elapsedTime);
            }
        }
        return output;
    }
}
