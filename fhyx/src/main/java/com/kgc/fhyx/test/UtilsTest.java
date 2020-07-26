package com.kgc.fhyx.test;

import com.kgc.fhyx.util.DataUtil;

/**
 * @author jialin
 */
public class UtilsTest {
    public static void main(String[] args) {
        String uuid = DataUtil.getUUID();
        System.out.println("UUID:"+uuid);
    }
}
