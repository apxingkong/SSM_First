package com.kgc.book.beans;

import lombok.Data;

import java.util.Date;

/**
 * @author jialin
 */
@Data
public class BookInfo {
    private Integer bookId;
    private String bookCode;
    private String bookName;
    private Integer bookType;
    private String bookTypename;
    private String bookAuthor;
    private String publishPress;
    private Date publishDate;
    private Integer isBorrow;
    private String createdBy;
    private Date creationTime;
    private Date lastUpdateTime;
}
