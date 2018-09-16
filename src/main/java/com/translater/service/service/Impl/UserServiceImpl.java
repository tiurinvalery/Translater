package com.translater.service.service.Impl;

import com.translater.service.model.user.User;
import com.translater.service.model.user.UserRole;
import com.translater.service.repository.UserRepository;
import com.translater.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
    public User getUserByUsername(String user) {
        return userRepository.findFirstByUsername(user);
    }

    @Override
    public User getUserByLoginAndPassword(String login, String password) {
        return userRepository.findFirstByUsernameAndPassword(login, password);
    }

    @Override
    public User getCurrentLogInUser() {
        User EUser;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            String name = auth.getName();
            EUser = getUserByUsername(name);
            return EUser;
        } else {
            return new User(UserRole.ROLE_ANONYMOUS);
        }
    }
}
