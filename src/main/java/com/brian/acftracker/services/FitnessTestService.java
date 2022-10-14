package com.brian.acftracker.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.brian.acftracker.models.FitnessTest;
import com.brian.acftracker.repos.FitnessTestRepo;

@Service
public class FitnessTestService {

	//CRUD
	@Autowired
	private FitnessTestRepo fitnessTestRepo;
	
	// returns all the babies or thing
    public List<FitnessTest> allFitness() {
        return fitnessTestRepo.findAll();
    }
    
 // creates a baby or createThing
    public FitnessTest createFitnessTest(FitnessTest b) {
        return fitnessTestRepo.save(b);
    }
 // retrieves a baby or findThing
    public FitnessTest findFitnessTest(Long id) {
        Optional<FitnessTest> optionalFitnessTest = fitnessTestRepo.findById(id);
        if(optionalFitnessTest.isPresent()) {
            return optionalFitnessTest.get();
        } else {
            return null;
        }
    }
    
    //Update thing
    public FitnessTest updateFitnessTest(FitnessTest b) {
    	return fitnessTestRepo.save(b);
    	
    }
    
  //Delete thing
    public void deleteFitnessTest(Long id) {
    	fitnessTestRepo.deleteById(id);
    }

}
