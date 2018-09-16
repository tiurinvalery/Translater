package com.translater.service.controller;

import com.translater.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class StartController {

    @Autowired
    UserService userService;

    @RequestMapping("/")
    public String rootPage(Map<String, Object> map) {
        map.put("user", userService.getCurrentLogInUser());
        return "rootPage";
    }
}
