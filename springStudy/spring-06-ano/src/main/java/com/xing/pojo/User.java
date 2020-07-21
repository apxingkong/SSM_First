package com.xing.pojo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * 等价于 <bean id="user" class="com.xing.pojo.User"/>
 * @Component 组件
 * @author jialin
 */
@Component
public class User {
//    public String name = "xingkong";
    //相当于<property name="name" value="xing"
    @Value("xing")
    public String name;
}
