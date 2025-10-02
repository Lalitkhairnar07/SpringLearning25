package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.StudentBean;

@Repository
public class StudentDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addStudent(StudentBean studentBean) {
		
		stmt.update("insert into students (firstName, lastName, email, rollNo) values(?,?,?,?)",
				studentBean.getFirstName(), studentBean.getLastName(),studentBean.getEmail(), studentBean.getRollNo());
		
	}
	
	public List<StudentBean> listStudent() {
		
		String selectQ = "SELECT * FROM students";
		
		List<StudentBean> students = stmt.query(selectQ, new BeanPropertyRowMapper(StudentBean.class));
		
		return students;
	}
	
	public void deleteStudent(Integer studentId) {
		
		stmt.update("DELETE FROM students WHERE studentId = ?",studentId );
		
	}
	
	public StudentBean editStdudent(Integer studentId) {
		
		StudentBean x = stmt.queryForObject("SELECT * FROM students WHERE studentId = ?", new BeanPropertyRowMapper<>(StudentBean.class),studentId);
		
		return x;
	}
	
	public void updateStudent(StudentBean studentBean) {
		
		stmt.update("UPDATE students SET firstName = ?, lastName = ?, email = ?, rollNo = ? WHERE studentId = ?",
				studentBean.getFirstName(), studentBean.getLastName(), studentBean.getEmail(), studentBean.getRollNo(), studentBean.getStudentId());
		
	}
	
}
