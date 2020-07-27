package com.kgc.fhyx.service;

import com.kgc.fhyx.beans.User;

/**
 * @author jialin
 */
public interface UserService {
    int queryUser(User user);
    int registerUser(User user);
    int queryUserByName(User user);
}
