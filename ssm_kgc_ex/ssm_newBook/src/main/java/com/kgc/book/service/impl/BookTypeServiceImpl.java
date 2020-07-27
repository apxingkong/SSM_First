package com.kgc.book.service.impl;

import com.kgc.book.beans.BookType;
import com.kgc.book.dao.BookTypeDao;
import com.kgc.book.service.BookTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jialin
 */
@Service
public class BookTypeServiceImpl implements BookTypeService {
    @Autowired
    private BookTypeDao bookTypeDao;
    @Override
    public List<BookType> queryAllType() {
        return bookTypeDao.queryAllType();
    }
}
