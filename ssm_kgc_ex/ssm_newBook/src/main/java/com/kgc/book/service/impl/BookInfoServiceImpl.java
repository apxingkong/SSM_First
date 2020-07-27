package com.kgc.book.service.impl;

import com.kgc.book.beans.BookInfo;
import com.kgc.book.dao.BookInfoDao;
import com.kgc.book.service.BookInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jialin
 */
@Service
public class BookInfoServiceImpl implements BookInfoService {
    @Autowired
    private BookInfoDao bookInfoDao;
    @Override
    public List<BookInfo> queryBookList(Integer bookType, String bookName, Integer isBorrow) {
        return bookInfoDao.queryBookList(bookType,bookName,isBorrow);
    }

    @Override
    public void borrowBook(String bookId) {
        bookInfoDao.borrowBook(bookId);
    }

    @Override
    public int getToalCount() {
        return bookInfoDao.getToalCount();
    }

    @Override
    public List<BookInfo> queryBookList2(Integer bookType, String bookName, Integer isBorrow, Integer pageNos, Integer pageSize) {
        return bookInfoDao.queryBookList2(bookType,bookName,isBorrow,pageNos,pageSize);
    }
}
