package com.bean;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class StudentBean {

	private	Integer studentId;
	@NotBlank(message = "First Name is required *")
	private String firstName;
	@NotBlank(message = "Last Name is required *")
	private String lastName;
	@NotBlank(message = "Email is required *")
	private String email;
	@NotNull(message = "Roll no is required *")
	private Integer rollNo;
	
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getRollNo() {
		return rollNo;
	}
	public void setRollNo(Integer rollNo) {
		this.rollNo = rollNo;
	}
	

	
	
}
