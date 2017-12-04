package com.fromentin.mongo;

import com.fromentin.model.HealthbookUser;
import org.springframework.data.repository.CrudRepository;

public interface UserRepositoryDao extends CrudRepository<HealthbookUser, String> {	
	public HealthbookUser findByUsername(String username);
}