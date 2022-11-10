package com.greatlearnig.students.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.greatlearnig.students.entity.Student;
import com.greatlearnig.students.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {


	@Autowired
	private StudentService studentService;


	// ResponseBody into restAPI ->  that will be use 
	// add mapping for "/list"

	@RequestMapping("/list")
	public String listStudents(Model theModel) {


		// get Students from db
		List<Student> theStudents = studentService.findAll();

		// add to the spring model
		theModel.addAttribute("Student", theStudents);


		return "list-Students";
	}

	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		Student theStudents = new Student();

		theModel.addAttribute("Student", theStudents);

		return "Student-form";
	}


	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentId") int theId,Model theModel) {

		// get the Student from the service
		Student theStudents =studentService.findById(theId);

		// set Student as a model attribute to pre-populate the form
		theModel.addAttribute("Student",theStudents );

		// send over to our form
		return "Student-form";			
	}


	@PostMapping("/save")
	public String save(@RequestParam("id") int id, @RequestParam("FirstName") String FirstName,
			@RequestParam("LastName") String LastName,@RequestParam("Course") String Course, 
			@RequestParam("Country") String Country) {

		System.out.println(id);
		Student theStudent;
		if (id != 0) {
			theStudent = studentService.findById(id);
			theStudent.setFirstName(FirstName);
			theStudent.setLastName(LastName);
			theStudent.setCourse(Course);
			theStudent.setCountry(Country);
		} else
			theStudent = new Student(FirstName,LastName,Course,Country);
		// save the Student
		studentService.save(theStudent);

		// use a redirect to prevent duplicate submissions
		return "redirect:/students/list";
	}



	@RequestMapping("/delete")
	public String delete(@RequestParam("studentId") int theId) {

		// delete the Student
		studentService.deleteById(theId);

		// redirect to /students/list
		return "redirect:/students/list";

	}

	@RequestMapping(value = "/403")
	public ModelAndView accesssDenied(Principal user) {

		ModelAndView model = new ModelAndView();



		if (user != null) {
			model.addObject("msg", " Hi "  + user.getName() 
			+ ", You do not have permission to access this page!");
		} else {
			model.addObject("msg", 
					"You do not have permission to access this page!");
		}

		model.setViewName("403");
		return model;

	}
}