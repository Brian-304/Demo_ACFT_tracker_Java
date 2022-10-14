package com.brian.acftracker.repos;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.brian.acftracker.models.User;



@Repository
public interface UserRepo extends CrudRepository<User, Long> {

	// this method overrides all other functions
	List<User> findAll();

	// Add findByEmail in the User Class
	Optional<User> findByEmail(String email);

}
