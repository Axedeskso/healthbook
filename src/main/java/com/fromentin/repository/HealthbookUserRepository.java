package com.fromentin.repository;

import com.fromentin.security.HealthbookUser;
import org.springframework.stereotype.Repository;
import org.springframework.data.mongodb.repository.MongoRepository;

@Repository
public interface HealthbookUserRepository extends MongoRepository<HealthbookUser, String>{
    

}
