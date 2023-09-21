package vn.huynh.spring.CRUD_SpringMVC_QLSV.service;

import vn.huynh.spring.CRUD_SpringMVC_QLSV.entity.Student;

import java.util.List;

public interface StudentService {
    public List<Student> getAllStudents();

    public Student getStudentById(int id);

    public Student addStudent(Student student);

    public Student updateStudent(Student student);

    public void deleteStudentById(int id);

}
