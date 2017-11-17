package com.fromentin.security;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class HealthbookUserDAOImpl{
    
    public HealthbookUser loadUserByUsername(final String username) {

        HealthbookUser user = new HealthbookUser();
        user.setUsername(username);
        return user;
    }
}
