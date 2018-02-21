/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ppurio.biz.sales.integration.commons.util;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Date;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author leesh04@daou.co.kr
 */
public class GoogleOTP {

    private static final Logger logs = LoggerFactory.getLogger(GoogleOTP.class);

    private static final String API_PARAM_FORMAT = "chs=%dx%d&chld=M|0&cht=qr&chl=otpauth://totp/%s@%s?secret=%s";
    private static final long DEFALUT_INTERVAL_MILLISECOND = 30000L;
    

    private final String apiUri;
    /* 최대허용시간(1=30초) */
    private final int past;
    
    // QR바코드 크기
    private int barcodeWidth = 200;
    private int barcodeHeight = 200;

    public int getBarcodeWidth() {
        return barcodeWidth;
    }

    public void setBarcodeWidth(int barcodeWidth) {
        this.barcodeWidth = barcodeWidth;
    }

    public int getBarcodeHeight() {
        return barcodeHeight;
    }

    public void setBarcodeHeight(int barcodeHeight) {
        this.barcodeHeight = barcodeHeight;
    }

    public GoogleOTP() {
        this("https://chart.googleapis.com/chart", 1);
    }

    public GoogleOTP(String apiUri, int past) {
        if (apiUri == null) {
            throw new IllegalArgumentException("apiUri is null.");
        }
        if (past < 1) {
            throw new IllegalArgumentException();
        }
        this.apiUri = apiUri;
        this.past = past;
    }

    /**
     * GoogleOTP Key 생성(중복가능) common-codec를 사용하지 않기 위해 Base32String을 구현해서 사용함.
     *
     * @return
     */
    public String generateEncodeKey() {
        /**
         * encodeKey 길이(16)
         * byte[] buffer = new byte[10];
         */
        byte[] buffer = new byte[20]; // encodeKey 길이(32)
        String encodeKey = "";
        try {
            /**
             * 개발장비 성능저하 확인
             * SecureRandom.getInstanceStrong().nextBytes(buffer);
             * @date 18.01.07
             */
            SecureRandom.getInstance("SHA1PRNG").nextBytes(buffer);
            encodeKey = new String(Base32String.encode(buffer));
        } catch (Exception e) {
            encodeKey = "";
            logs.error("==> generateEncodeKey exception.", e);
        }
        return encodeKey;
    }

    /**
     * QR바코드 URL 생성
     *
     * @param domain
     * @param id
     * @param encodeKey
     * @return
     * @throws Exception
     */
    public String getQRBarcodeURL(String domain, String id, String encodeKey) throws Exception {
        if (domain == null
                || domain.isEmpty()) {
            throw new IllegalArgumentException("domain is empty.");
        }
        if (id == null
                || id.isEmpty()) {
            throw new IllegalArgumentException("id is empty.");
        }
        if (encodeKey == null
                || encodeKey.isEmpty()) {
            throw new IllegalArgumentException("encodeKey is empty.");
        }
        StringBuilder barcordUri = new StringBuilder(apiUri);
        barcordUri.append("?")
                .append(String.format(API_PARAM_FORMAT,
                        barcodeWidth, barcodeHeight, id, domain, encodeKey));
        return barcordUri.toString();
    }

    /**
     * OTP인증
     * @param encodeKey
     * @param otpNumber
     * @return
     * @throws Exception
     */
    public boolean checkOtpCode(String encodeKey, long otpNumber) {
        boolean iRet = false;
        try {
            byte[] decodedKey = Base32String.decode(encodeKey);
            long timeStemp = getCurrentTimeStemp();
            for (int i = -past; i <= past; ++i) {
                long hash = verifyCode(decodedKey, timeStemp + i);
                if (hash == otpNumber) {
                    iRet = true;
                    break;
                }
            }
        } catch (Exception e) {
            iRet = false;
        }
        return iRet;
    }

    private long getCurrentTimeStemp() {
        return new Date().getTime() / DEFALUT_INTERVAL_MILLISECOND;
    }

    /**
     *
     * @param key
     * @param t
     * @return
     * @throws NoSuchAlgorithmException
     * @throws InvalidKeyException
     */
    private int verifyCode(byte[] key, long t) throws NoSuchAlgorithmException, InvalidKeyException {
        byte[] data = new byte[8];
        long value = t;
        for (int i = 8; i-- > 0; value >>>= 8) {
            data[i] = (byte) value;
        }

        SecretKeySpec signKey = new SecretKeySpec(key, "HMACSHA1");
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(signKey);
        byte[] hash = mac.doFinal(data);

        int offset = hash[20 - 1] & 0xF;

        long truncatedHash = 0;
        for (int i = 0; i < 4; ++i) {
            truncatedHash <<= 8;
            truncatedHash |= (hash[offset + i] & 0xFF);
        }

        truncatedHash &= 0x7FFFFFFF;
        truncatedHash %= 1000000;

        return (int) truncatedHash;
    }

}
