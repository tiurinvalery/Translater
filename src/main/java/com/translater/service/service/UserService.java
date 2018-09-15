package com.translater.service.service;

import com.translater.service.model.user.User;

public interface UserService {

    User getUserByLoginAndPassword(String login, String password);
}
