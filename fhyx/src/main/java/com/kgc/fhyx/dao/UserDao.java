package com.kgc.fhyx.dao;

import com.kgc.fhyx.beans.User;

/**
 * @author jialin
 */
public interface UserDao {
    /**
     * 查询用户是否存在
     * @param user
     * @return
     */
    int queryUser(User user);

    /**
     * 用户注册
     * @param user
     * @return
     */
    int registerUser(User user);

    /**
     * 用户信息修改
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 根据用户名查询用户是否存在
     * @param user
     * @return
     */
    int queryUserByName(User user);
}
