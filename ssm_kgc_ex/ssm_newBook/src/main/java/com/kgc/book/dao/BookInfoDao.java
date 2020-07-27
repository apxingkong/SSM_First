package com.kgc.book.dao;

import com.kgc.book.beans.BookInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jialin
 */
public interface BookInfoDao {
    List<BookInfo> queryBookList(@Param("bookType") Integer bookType, @Param("bookName") String bookName, @Param("isBorrow") Integer isBorrow);
    void borrowBook(@Param("bookId") String bookId);
    int getToalCount();
    List<BookInfo> queryBookList2(@Param("bookType") Integer bookType,
                                  @Param("bookName") String bookName,
                                  @Param("isBorrow") Integer isBorrow,
                                  @Param("pageNos") Integer pageNos,
                                  @Param("pageSize") Integer pageSize);
}
