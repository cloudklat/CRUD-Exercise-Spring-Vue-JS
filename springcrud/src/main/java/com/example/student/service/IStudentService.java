package com.example.student.service;

import java.util.List;

import com.example.student.model.Student;

public interface IStudentService {
	public Student insertStudent(Student student);
	public List<Student> getAllStudent();
	public Student updateStudent(int id, Student student);
	public Student deleteStudent(int id);
	public Student getStudentById(int id);
}
