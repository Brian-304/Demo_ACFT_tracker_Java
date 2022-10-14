package com.brian.acftracker.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brian.acftracker.models.FitnessTest;
import com.brian.acftracker.models.User;
import com.brian.acftracker.services.FitnessTestService;
import com.brian.acftracker.services.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService userServ;

	@Autowired
	private FitnessTestService fitnessTestServ;

	// Need to include session
	@GetMapping("/home")
	public String homePage(HttpSession session, Model model) {
		// retrieve the user from session
		Long userId = (Long) session.getAttribute("user_id");
		// check if userId is null
		if (userId == null) {
			return "redirect:/";
		} else {
			// go to the database to retrieve the user using the id in session
			User thisUser = userServ.findOne(userId);
			List<FitnessTest> allFitness = fitnessTestServ.allFitness();

			model.addAttribute("thisUser", thisUser);
			model.addAttribute("allFitness", allFitness);

			return "/home.jsp";
		}
	}

	@GetMapping("/test/new")
	public String newTest(@ModelAttribute("tests") FitnessTest fitness, // this three always together
			HttpSession session, Model model) {
		// retrieve the user from session
		Long userId = (Long) session.getAttribute("user_id");
		// check if userId is null
		if (userId == null) {

			return "redirect:/";
		}
		User thisUser = userServ.findOne(userId);
		model.addAttribute("thisUser", thisUser);
		return "basicform.jsp";
	}

	@PostMapping("/test/result")
	public String createBasicInfo(@Valid @ModelAttribute("tests") FitnessTest fitnessTest, BindingResult result,
			Model model, HttpSession session) {
		// route guard
		if (session.getAttribute("user_id") == null) {
			return "redirect:/";
		}

		// if there are any errors re-render the form
		if (result.hasErrors()) {
			return "basicform.jsp";
		} else {
			// go to the database to retrieve the user using the id in session
			Long userId = (Long) session.getAttribute("user_id");// getting the userId from session
			User thisUser = userServ.findOne(userId);// getting the actual User object by id
			model.addAttribute("thisUser", thisUser);

			fitnessTest.setPoster(thisUser);// Setting the poster to the user object I got from session if not in the
											// form
			fitnessTestServ.createFitnessTest(fitnessTest);// Create a baby.

			return "redirect:/home";

		}
	}

//	@GetMapping("/fitness/test")
//	public String eventExercises(@ModelAttribute("tests") FitnessTest fitness, // this three always together
//			HttpSession session, Model model) {
//		// retrieve the user from session
//		Long userId = (Long) session.getAttribute("user_id");
//		// check if userId is null
//		if (userId == null) {
//
//			return "redirect:/";
//		}
//		User thisUser = userServ.findOne(userId);
//		model.addAttribute("thisUser", thisUser);
//		return "eventform.jsp";
//	}
//
//	@PostMapping("/events/create")
//	public String createFitnessTest(@Valid @ModelAttribute("tests") FitnessTest fitnessTest, BindingResult result,
//			Model model, HttpSession session) {
//		// route guard
//		if (session.getAttribute("user_id") == null) {
//			return "redirect:/";
//		}
//
//		// if there are any errors re-render the form
//		if (result.hasErrors()) {
//			return "eventform.jsp";
//		} else {
//			// go to the database to retrieve the user using the id in session
//			Long userId = (Long) session.getAttribute("user_id");// getting the userId from session
//			User thisUser = userServ.findOne(userId);// getting the actual User object by id
//			model.addAttribute("thisUser", thisUser);
//
//			fitnessTest.setPoster(thisUser);// Setting the poster to the user object I got from session if not in the
//											// form
//			fitnessTestServ.createFitnessTest(fitnessTest);// Create a baby.
//
//			return "redirect:/home";
//		}
//
//	}

	@RequestMapping("/tests/{id}")
	public String one(@PathVariable("id") Long id, Model model, HttpSession session) {
		// route guard
		if (session.getAttribute("user_id") == null) {
			return "redirect:/";
		}
		// Go to the database, with id, get the fitness test
		User thisUser = userServ.findOne((Long) session.getAttribute("user_id"));// to render login user info from //
																					// session
		FitnessTest thisFitnessTest = fitnessTestServ.findFitnessTest(id);

		// pass the fitness data to jsp page
		model.addAttribute("thisUser", thisUser); // render user on jsp
		model.addAttribute("thisFitnessTest", thisFitnessTest); // render fitness test on jsp

		return "show.jsp";
	}

	@GetMapping("/edit/{id}")
	public String edit(@Valid @PathVariable("id") Long id, Model model, HttpSession session) {
		// route guard
		if (session.getAttribute("user_id") == null) {
			return "redirect:/";
		}
		// find expense with provided id
		FitnessTest fitnessTest = fitnessTestServ.findFitnessTest(id);
		// pass this expense to jsp page to display data using model.addAttribute
		model.addAttribute("fitnessTest", fitnessTest);
		model.addAttribute("testsid", id);
		return "edit.jsp";

	}

	@PutMapping("/edit/{id}")
	public String update(@Valid @ModelAttribute("tests") FitnessTest fitnessTest, BindingResult result,
			@PathVariable("id") Long id, Model model) {
		if (result.hasErrors()) {
			return "edit.jsp";
		} else {
			// If there are no errors, update the object
			fitnessTestServ.updateFitnessTest(fitnessTest);

			return "redirect:/home";
		}

	}

	// Method for delete
//	@DeleteMapping("/tests/{id}/delete")
//	public String destroy(@PathVariable("id") Long id) {
//		fitnessTestServ.deleteFitnessTest(id);
//		return "redirect:/home";
//	}

	// Method for delete
	@DeleteMapping("/home/{id}")
	public String destroy(@PathVariable("id") Long id) {
		fitnessTestServ.deleteFitnessTest(id);
		return "redirect:/home";
	}

}
