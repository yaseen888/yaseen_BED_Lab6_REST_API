package com.greatlearnig.students.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.greatlearnig.students.entity.Student;

public interface StudentRepository extends JpaRepository<Student,Integer> {

}