package com.xing.dao;

import com.xing.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jialin
 */
public interface BookMapper {
    //增加一本书
    int addBook(Books books);
    //删除
    int deleteBookById(@Param("bookId") int id);
    //更新
    int updateBook(Books book);
    //查询一本书
    Books queryBookById(@Param("bookId") int id);
    //查询全部的书
    List<Books> queryAllBook();
}
