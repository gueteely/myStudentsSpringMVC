package com.artur.my_students.dao;

import com.artur.my_students.entity.Student;

import java.util.List;

public interface StudentDAO {
    public List<Student> getAllStudents();
    public void saveStudent(Student student);
    public Student getStudent(int id);
    public void deleteStudent(int id);
}
