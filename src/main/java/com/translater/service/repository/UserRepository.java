package com.translater.service.repository;

import com.translater.service.model.user.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends MongoRepository<User, String> {
    User findFirstByUsernameAndPassword(String username, String password);

    User findFirstByUsername(String username);
}
