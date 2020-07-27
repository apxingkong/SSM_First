package com.kgc.fhyx.service.impl;

import com.kgc.fhyx.beans.User;
import com.kgc.fhyx.dao.UserDao;
import com.kgc.fhyx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author jialin
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired(required = false)
    private UserDao userDao;

    /**
     * 查询用户
     * @param user
     * @return
     */
    @Override
    public int queryUser(User user) {
        return userDao.queryUser(user);
    }

    /**
     * 用户注册
     * @param user
     * @return
     */
    @Override
    public int registerUser(User user) {
        return userDao.registerUser(user);
    }

    /**
     * 根据用户名查询用户
     * @param user
     * @return
     */
    @Override
    public int queryUserByName(User user) {
        return userDao.queryUserByName(user);
    }
}
