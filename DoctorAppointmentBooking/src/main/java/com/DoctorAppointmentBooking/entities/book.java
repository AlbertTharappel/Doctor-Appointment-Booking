package com.DoctorAppointmentBooking.entities;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="booking")
public class book {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private Date date;
	private String status;
	@OneToOne(cascade = CascadeType.ALL)
	private Patient p;
	@OneToOne(cascade = CascadeType.ALL )
	private Doctor doc;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Patient getP() {
		return p;
	}
	public void setP(Patient p) {
		this.p = p;
	}
	public Doctor getDoc() {
		return doc;
	}
	public void setDoc(Doctor doc) {
		this.doc = doc;
	}
}
