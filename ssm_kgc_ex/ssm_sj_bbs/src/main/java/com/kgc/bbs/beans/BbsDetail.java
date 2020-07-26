package com.kgc.bbs.beans;

import lombok.Data;

import java.util.Date;

/**
 * @author jialin
 */
@Data
public class BbsDetail {
    private Integer id;
    private Integer sortId;
    private String sortName;
    private String title;
    private String detail;
    private String author;
    private Date createDate;
    private Integer replyCount;
    private String bbsDate;
}
