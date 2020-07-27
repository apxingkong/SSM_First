package com.kgc.book.service;

import com.kgc.book.beans.Users;

/**
 * @author jialin
 */
public interface UserService {
    int queryUSer(Users users);
    int addUser(Users users);
}
