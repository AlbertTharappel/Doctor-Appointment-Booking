package com.DoctorAppointmentBooking.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.DoctorAppointmentBooking.entities.Patient;

@Repository
public interface PatientRepo extends JpaRepository<Patient, Integer> {

	Patient findByEmailAndPassword(String email, String password);

	@Query("From Patient where usertype='user'")
	public List<Patient> findAll();
	
	@Query("From Patient where usertype='staff'")
	public List<Patient> getstaff();
	
	public boolean existsByEmail(String email);

}
