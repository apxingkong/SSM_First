package com.kgc.book.service.impl;

import com.kgc.book.beans.Users;
import com.kgc.book.dao.UserDao;
import com.kgc.book.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author jialin
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public int queryUSer(Users users) {
        return userDao.queryUSer(users);
    }

    @Override
    public int addUser(Users users) {
        return userDao.addUser(users);
    }
}
