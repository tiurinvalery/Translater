package com.translater.service.service.Impl;

import com.translater.service.model.user.User;
import com.translater.service.model.user.UserRole;
import com.translater.service.repository.UserRepository;
import com.translater.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    UserRepository userRepository;

    public void createUser(String username, String password, boolean isEnable, UserRole role) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setUserRole(role);
        user.setEnabled(isEnable);
        userRepository.save(user);


    }

    @Override
    public User getUserByLoginAndPassword(String login, String password) {
        return userRepository.findFirstByUsernameAndPassword(login, password);
    }
}
