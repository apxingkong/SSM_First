package com.kgc.book.service;

import com.kgc.book.beans.BookInfo;

import java.util.List;

/**
 * @author jialin
 */
public interface BookInfoService {
    List<BookInfo> queryBookList(Integer bookType,String bookName,Integer isBorrow);
    void borrowBook(String bookId);
    int getToalCount();
    List<BookInfo> queryBookList2(Integer bookType,
                                  String bookName,
                                  Integer isBorrow,
                                  Integer pageNos,
                                  Integer pageSize);
}
