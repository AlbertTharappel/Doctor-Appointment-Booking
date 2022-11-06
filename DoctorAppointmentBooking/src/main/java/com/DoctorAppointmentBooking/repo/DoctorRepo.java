package com.DoctorAppointmentBooking.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.DoctorAppointmentBooking.entities.Doctor;

@Repository
public interface DoctorRepo extends JpaRepository<Doctor, Integer> {

	@Query("from Doctor where speciality=:speciality")
	public List<Doctor> getalldoctor(@Param("speciality")String speciality);
}
