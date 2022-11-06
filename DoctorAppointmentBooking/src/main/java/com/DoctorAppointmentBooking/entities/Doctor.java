package com.DoctorAppointmentBooking.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
@Entity
@Table(name = "doctor")
public class Doctor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	private String image;
	private String firstname1;
	private String lastname1;
	private String speciality;
	private String qualification;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getFirstname1() {
		return firstname1;
	}
	public void setFirstname1(String firstname1) {
		this.firstname1 = firstname1;
	}
	public String getLastname1() {
		return lastname1;
	}
	public void setLastname1(String lastname1) {
		this.lastname1 = lastname1;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	
	 
}
