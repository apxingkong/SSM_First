package com.kgc.book.beans;

import lombok.Data;

import java.util.Date;

/**
 * @author jialin
 */
@Data
public class Users {
    private Integer userId;
    private String userCode;
    private String password;
    private String email;
    private String gender;
    private Date register_time;
    private Date lastLogintime;
}
