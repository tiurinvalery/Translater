package com.translater.service.controller.API;

import com.translater.service.controller.dto.User;
import com.translater.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AuthController {
    @Autowired
    UserService userService;

    @PostMapping("/perform_login")
    public void loginIn(@RequestBody User user) {
        com.translater.service.model.user.User existUser = userService.getCurrentLogInUser();
    }
}
