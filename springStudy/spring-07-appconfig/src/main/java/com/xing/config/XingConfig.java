package com.xing.config;

import com.xing.pojo.User;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author jialin
 */
//代表这是一个配置类，类似beans.xml
@Configuration
public class XingConfig {
    //注册一个bean，相当于bean标签，名字相当于bean中的id，返回值相当于bean的class
    @Bean
    public User getUser(){
        return new User();
    }
}
