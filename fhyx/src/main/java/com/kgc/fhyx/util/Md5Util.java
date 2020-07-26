package com.kgc.fhyx.util;

import org.springframework.util.DigestUtils;

public class Md5Util
{
    
    public static String md5(String text, String key)
    {
        String rst = DigestUtils.md5DigestAsHex((text + key).getBytes());
        return rst;
    }
    
    public static void main(String[] args)
    {
        
        System.out.println(md5("123456", "abc123456abc"));
        
    }
}
