package vn.huynh.spring.CRUD_SpringMVC_QLSV.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.huynh.spring.CRUD_SpringMVC_QLSV.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
}
