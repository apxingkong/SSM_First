package com.kgc.fhyx.beans;

import lombok.Data;

/**
 * @author jialin
 */
@Data
public class User {
    private Integer userId;
    private String userName;
    private Integer sex;
    private String telephone;
    private String userPwd;
    private String email;
    private String address;
    private String userPic;
}
