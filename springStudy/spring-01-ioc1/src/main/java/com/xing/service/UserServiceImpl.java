package com.xing.service;

import com.xing.dao.USerDaoImpl;
import com.xing.dao.UserDao;

/**
 * @author jialin
 */
public class UserServiceImpl implements UserService{
    private UserDao userDao;

    /**
     * 使用set注入后，程序不再有主动性，而是变成了被动地接受对象
     * ioc的原型，控制反转
     * @param userDao
     */
    public void setUserDao(UserDao userDao){
        this.userDao = userDao;
    }
    @Override
    public void getUser() {
        userDao.getUser();
    }
}
