package com.brian.acftracker.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.brian.acftracker.models.FitnessTest;

public interface FitnessTestRepo extends CrudRepository<FitnessTest, Long> {
	List<FitnessTest> findAll();
}
