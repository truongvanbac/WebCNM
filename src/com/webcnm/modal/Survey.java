package com.webcnm.modal;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "survey", uniqueConstraints = { @UniqueConstraint(columnNames = { "sv_id" }) })
public class Survey {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sv_id", nullable = false, unique = true, length = 11)
	private int id;

	@Column(name = "tch_id", nullable = false, unique = false, length = 11)
	private int tch_id;

	@Column(name = "title", nullable = false, unique = false)
	private String title;

	@Column(name = "ask", nullable = false, unique = false)
	private String ask;

	@Column(name = "time_created", nullable = false, unique = false)
	private Date time_created;

	@Column(name = "time_updated", nullable = false, unique = false)
	private Date time_updated;

	@OneToMany(mappedBy = "suv", fetch=FetchType.LAZY)
	private Set<Answer> ans = new HashSet<Answer>(0);

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

	public String getAsk() {
		return ask;
	}

	public void setAsk(String ask) {
		this.ask = ask;
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

	public Set<Answer> getAns() {
		return ans;
	}

	public void setAns(Set<Answer> ans) {
		this.ans = ans;
	}

}
