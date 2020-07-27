package com.kgc.book.dao;

import com.kgc.book.beans.Users;

/**
 * @author jialin
 */
public interface UserDao {
    int queryUSer(Users users);
    int addUser(Users users);
}
