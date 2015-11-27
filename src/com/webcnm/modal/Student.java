package com.webcnm.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "student", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true, length = 11)
	private int id;

	@Column(name = "tch_id", nullable = false, unique = false, length = 11)
	private int tch_id;

	@Column(name = "username", nullable = false, unique = true, length = 60)
	private String username;

	@Column(name = "password", nullable = false, unique = false, length = 150)
	private String password;

	@Column(name = "fullname", nullable = false, unique = false, length = 60)
	private String fullname;

	@Column(name = "class", nullable = true, unique = false, length = 30)
	private String classroom;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTch_id() {
		return tch_id;
	}

	public void setTch_id(int tch_id) {
		this.tch_id = tch_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getClassroom() {
		return classroom;
	}

	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}

}
