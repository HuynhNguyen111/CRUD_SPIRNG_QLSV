package vn.huynh.spring.CRUD_SpringMVC_QLSV.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.huynh.spring.CRUD_SpringMVC_QLSV.entity.Student;
import vn.huynh.spring.CRUD_SpringMVC_QLSV.service.StudentService;

import java.util.List;

@Controller
@RequestMapping("/students")
public class StudentController {
    private StudentService studentService;

    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping("list")
    public String listAll(Model model) //model để set thông tin vào
    {
        List<Student> students=studentService.getAllStudents();
        model.addAttribute("students",students); //1 cái biến là students giá trị của nó là list students ở trên
        return "student/Students";
    }
    @GetMapping("/create")// hiển thị ra form để nhập
    public String create(Model model){
         Student student =new Student();
         model.addAttribute("student", student); //chổ students màu xanh lá cây phải giống với student trong object của view
         return  "/student/students-form";
    }
    @PostMapping("/save") // add student vào csdl
    public String save(@ModelAttribute("student") Student student){
        studentService.addStudent(student);
        return "redirect:/students/list";//chuyển sang trang mới
    }
    @GetMapping("/update")// hiển thị ra form để nhập
    public String update(@RequestParam("id") Integer id, Model model){
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student); //chổ students màu xanh lá cây phải giống với student trong object của view
        return  "/student/students-form";
    }
    @GetMapping("/delete")
    public String delete(@RequestParam("id") Integer id, Model model){
        studentService.deleteStudentById(id);
        return  "redirect:/students/list";
    }
}
