package com.webcnm.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "answer", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Answer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true, length = 11)
	private int id;

	@Column(name = "content", nullable = false, unique = false)
	private String content;

	@Column(name = "number_selected", nullable = true, unique = false)
	private int number_selected;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "sv_id", nullable = false)
	private Survey suv;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getNumber_selected() {
		return number_selected;
	}

	public void setNumber_selected(int number_selected) {
		this.number_selected = number_selected;
	}

	public Survey getSuv() {
		return suv;
	}

	public void setSuv(Survey suv) {
		this.suv = suv;
	}

}
