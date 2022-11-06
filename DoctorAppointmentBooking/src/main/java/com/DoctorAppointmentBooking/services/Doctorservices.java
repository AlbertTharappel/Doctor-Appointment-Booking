package com.DoctorAppointmentBooking.services;

import java.io.IOException;
import java.util.Base64;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.DoctorAppointmentBooking.entities.Doctor;
import com.DoctorAppointmentBooking.repo.DoctorRepo;

@Service
public class Doctorservices {

	@Autowired
	DoctorRepo doctorRepo;
	
	public Doctor savedoctor(MultipartFile file, Doctor doctor) {
		
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		if (fileName.contains("..")) {
			System.out.println("Not a valid image");
		}
		try {
			doctor.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return doctorRepo.save(doctor);
	}
	public List<Doctor> getAllDoctor(){
		
		return doctorRepo.findAll();
	}
	public void removeDoctor(int id) {
		
		doctorRepo.deleteById(id);
	}
	
	public Doctor getDocById(int id) {
		
		return doctorRepo.findById(id).get();
	}
	
	public Doctor updatedoctor(MultipartFile file, Doctor doctor) {
		
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		if (fileName.contains("..")) {
			System.out.println("Not a valid image");
		}
		try {
			doctor.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return doctorRepo.save(doctor);
	}
		public List<Doctor> getDoctor(String speciality){
		if(speciality!=null) {
			return doctorRepo.getalldoctor(speciality);	
		}
		return doctorRepo.findAll();
	}
}
