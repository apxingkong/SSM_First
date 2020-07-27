package com.kgc.fhyx.controller;

import com.kgc.fhyx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @author jialin
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;
}
