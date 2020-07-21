package com.huang.service;

import com.huang.pojo.Books;

import java.util.List;

/**
 * @author jialin
 */
public interface BookService {
    //    增加一本书
    int addBook(Books books);

    //    删除一本书
    int deleteBookById(int id);

    //    更新一本书
    int updateBook(Books books);

    //    查询一本书
    Books queryBookById(int id);

    //    查询全部的书
    List<Books> queryAllBook();
}
