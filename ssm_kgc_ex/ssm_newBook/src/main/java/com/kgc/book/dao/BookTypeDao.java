package com.kgc.book.dao;

import com.kgc.book.beans.BookType;

import java.util.List;

/**
 * @author jialin
 */
public interface BookTypeDao {
    List<BookType> queryAllType();
}
