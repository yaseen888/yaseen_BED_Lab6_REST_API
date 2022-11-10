package com.greatlearnig.students.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "students")
@Getter
@Setter
public class Student {
	//define fields
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "firstName")
	private String FirstName;

	@Column(name = "lastName")
	private String LastName;

	@Column(name = "course")
	private String Course;

	@Column(name = "country")
	private String Country;

	public Student()
	{

	}
	public Student(String firstName, String lastName, String course, String country) 
	{

		super();
		FirstName = firstName;
		LastName = lastName;
		Course = course;
		Country = country;
	}


}