package com.webcnm.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "teacher", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Teacher {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true, length = 11)
	private int id;

	@Column(name = "username", nullable = false, unique = true, length = 60)
	private String username;

	@Column(name = "password", nullable = false, length = 150)
	private String password;

	@Column(name = "fullname", nullable = false, length = 60)
	private String fullname;

	@Column(name = "regency", nullable = true, length = 60)
	private String regency;

	@Column(name = "mobile_number", nullable = true, length = 15)
	private String mobile_number;

	@Column(name = "phone_com", nullable = true, length = 15)
	private String phone_com;

	@Column(name = "add_home", nullable = true, length = 150)
	private String add_home;

	@Column(name = "add_com", nullable = true, length = 150)
	private String add_com;

	@Column(name = "avatar", nullable = true, length = 150)
	private String avatar;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getRegency() {
		return regency;
	}

	public void setRegency(String regency) {
		this.regency = regency;
	}

	public String getMobile_number() {
		return mobile_number;
	}

	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}

	public String getPhone_com() {
		return phone_com;
	}

	public void setPhone_com(String phone_com) {
		this.phone_com = phone_com;
	}

	public String getAdd_home() {
		return add_home;
	}

	public void setAdd_home(String add_home) {
		this.add_home = add_home;
	}

	public String getAdd_com() {
		return add_com;
	}

	public void setAdd_com(String add_com) {
		this.add_com = add_com;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

}
