package com.fromentin.security;

import org.springframework.stereotype.Repository;

@Repository
public class HealthbookUserDAOImpl{
    
    public HealthbookUser loadUserByUsername(final String username) {

        HealthbookUser user = new HealthbookUser();
        user.setUsername(username);
        return user;
    }
}
