package com.translater.service.service.Impl;

import com.translater.service.model.user.UserRole;
import com.translater.service.repository.UserRepository;
import com.translater.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    UserRepository userRepository;

    public void createUser(String username, String password, boolean isEnable, UserRole role) {
        com.translater.service.model.user.User user = new com.translater.service.model.user.User();
        user.setUsername(username);
        user.setPassword(password);
        user.setUserRole(role);
        user.setEnabled(isEnable);
        userRepository.save(user);


    }

    @Override
    public com.translater.service.model.user.User getUserByUsername(String user) {
        return userRepository.findFirstByUsername(user);
    }

    @Override
    public com.translater.service.model.user.User getUserByLoginAndPassword(String login, String password) {
        return userRepository.findFirstByUsernameAndPassword(login, password);
    }

    @Override
    public com.translater.service.model.user.User getCurrentLogInUser() {
        com.translater.service.model.user.User EUser;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            String name = auth.getName();
            EUser = getUserByUsername(name);
            return EUser;
        } else {
            return new com.translater.service.model.user.User(UserRole.ROLE_ANONYMOUS);
        }
    }


    @Bean
    public UserDetailsService userDetailsService() throws Exception {
        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
        manager.createUser(User
                .withUsername("user")
                .password(encoder().encode("userPass"))
                .roles("USER")
                .build());

        manager.createUser(User
                .withUsername("admin")
                .password(encoder().encode("adminPass"))
                .roles("ADMIN")
                .build());

        return manager;
    }

    @Bean
    public static PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }
}
