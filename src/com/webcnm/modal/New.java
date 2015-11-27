package com.webcnm.modal;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "new", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class New {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true, length = 11)
	private int id;
	
	@Column(name = "tch_id", nullable = false, unique = false, length = 11)
	private int tch_id;
	
	@Column(name = "title", nullable = false, unique = false, length = 150)
	private String title;
	
	@Column(name = "content", nullable = true, unique = false)
	private String content;
	
	@Column(name = "time_created", nullable = false, unique = false)
	private Date time_created;
	
	@Column(name = "time_updated", nullable = false, unique = false)
	private Date time_updated;

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime_created() {
		return time_created;
	}

	public void setTime_created(Date time_created) {
		this.time_created = time_created;
	}

	public Date getTime_updated() {
		return time_updated;
	}

	public void setTime_updated(Date time_updated) {
		this.time_updated = time_updated;
	}

}
