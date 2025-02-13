package com.artur.my_students.controller;
import com.artur.my_students.entity.Student;
import com.artur.my_students.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MyController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/")
    public String showAllStudents(Model model) {
        List<Student> allStudents = studentService.getAllStudents();
        model.addAttribute("students", allStudents);
        return "all-students";
    }
    @RequestMapping("/addNewStudent")
    public String addNewStudent(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        return "student-info";
    }
    @RequestMapping("/saveStudent")
    public String saveStudent(@ModelAttribute("student") Student student) {
        studentService.saveStudent(student);
        return "redirect:/";
    }
    @RequestMapping("/updateInfo")
    public String updateStudent(@RequestParam("stdId") int id, Model model) {
        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        return "student-info";
    }
    @RequestMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("stdId") int id) {
        studentService.deleteStudent(id);
        return "redirect:/";
    }
}
