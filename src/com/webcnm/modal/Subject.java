package com.webcnm.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "subject", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Subject {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true, length = 11)
	private int id;

	@Column(name = "tch_id", nullable = false, unique = false, length = 11)
	private int tch_id;

	@Column(name = "name", nullable = false, unique = false, length = 150)
	private String name;

	@Column(name = "sumary", nullable = true, unique = false)
	private String sumary;

	public Subject() {
	};

	public Subject(int id, int tch_id, String name, String sumary) {
		this.id = id;
		this.tch_id = tch_id;
		this.name = name;
		this.sumary = sumary;
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSumary() {
		return sumary;
	}

	public void setSumary(String sumary) {
		this.sumary = sumary;
	}

}
