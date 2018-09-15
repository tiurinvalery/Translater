package com.translater.service.utill;

import com.mongodb.MongoClient;
import org.springframework.context.annotation.Bean;
import org.springframework.data.mongodb.core.MongoClientFactoryBean;
import org.springframework.data.mongodb.core.MongoTemplate;

public class AppConfig {

    public @Bean
    MongoClientFactoryBean mongo() {
        MongoClientFactoryBean bean = new MongoClientFactoryBean();
        bean.setHost("localhost");
        return bean;
    }

    public @Bean
    MongoClient mongoClient() {
        return new MongoClient("localhost");
    }

    public @Bean
    MongoTemplate mongoTemplate() {
        return new MongoTemplate(mongoClient(), "mydatabase");
    }
}
