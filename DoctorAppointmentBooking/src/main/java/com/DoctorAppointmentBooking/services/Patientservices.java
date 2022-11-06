package com.DoctorAppointmentBooking.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.DoctorAppointmentBooking.entities.Doctor;
import com.DoctorAppointmentBooking.entities.Patient;
import com.DoctorAppointmentBooking.entities.book;
import com.DoctorAppointmentBooking.repo.Bookrepo;
import com.DoctorAppointmentBooking.repo.PatientRepo;



@Service
public class Patientservices {

	@Autowired
	PatientRepo patientrepo;
	@Autowired
	Bookrepo bookrepo;

	public void savepatient(Patient patient) {
		patientrepo.save(patient);
	}

	public Patient LoginCheck(String email, String password) {

		return patientrepo.findByEmailAndPassword(email, password);

	}

	public List<Patient> getAllpatient() {

		return patientrepo.findAll();
	}

	public Patient AddStaff(Patient user) {

		return patientrepo.save(user);
	}

	public List<Patient> getAllStaff() {
		return patientrepo.getstaff();

	}

	public boolean checkEmail(String email) {

		return patientrepo.existsByEmail(email);

	}

	public void removeStaff(int id) {

		patientrepo.deleteById(id);
	}

	public Patient getStaffByid(int id) {

		return patientrepo.findById(id).get();

	}

	public Patient updateStaffUser(Patient p) {

		return patientrepo.save(p);
	}

	public void patientById(int id) {

		patientrepo.findById(id).get();
	}

	public Patient updateprofile(Patient p) {

		return patientrepo.save(p);
	}

	public void savebook(book b,Patient p,Doctor d) {

		
		bookrepo.save(b);
	}

	public List<book> getAlldetails() {

		return bookrepo.getAllRequest();
	}
	public Patient getPatientById(int id) {
		
		return patientrepo.findById(id).get();
	}
	
	public void approvemethod(int id) {
		
		bookrepo.updatestatus("approve", id);
	}
	public List<book> getAllBookdetails() {

		
		return bookrepo.getAllbookinglist();
	}
	public void cancelmethod(int id) {
		
		bookrepo.updatestatus("cancel", id);
	}
	public List<book> getuserBookingById(int id) {
		
		List<book> li=bookrepo.getrequest(id);
		return li;
	}
	
}
