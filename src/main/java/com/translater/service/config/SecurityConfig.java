package com.translater.service.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@Order(Ordered.HIGHEST_PRECEDENCE)
public class SecurityConfig {

    @Configuration
    public static class App1ConfigurationAdapter extends WebSecurityConfigurerAdapter {
        public App1ConfigurationAdapter() {
            super();
        }

        @Override
        protected void configure(HttpSecurity http) throws Exception {
            http
                    .authorizeRequests()
                    .antMatchers("/*").hasAnyRole("ANONYMOUS", "USER", "ADMIN")
                    .antMatchers("/api/**").hasAnyRole("ADMIN", "USER")
                    .antMatchers("/control/**").hasAnyRole("USER", "ADMIN", "MODERATOR")
                    .antMatchers("/login").permitAll()
                    .antMatchers("/j_spring_security_check").permitAll()
                    .and()
                    .formLogin()
                    .loginPage("/login")
                    .defaultSuccessUrl("/control/v1/dash")
                    .failureForwardUrl("/404.jsp")
                    .usernameParameter("j_username")
                    .passwordParameter("j_password")
                    .and()
                    .logout()
                    .logoutSuccessUrl("/login")
                    .and()
                    .csrf()
                    .disable();


        }
    }


}




