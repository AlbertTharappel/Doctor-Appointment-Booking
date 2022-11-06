package com.DoctorAppointmentBooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.DoctorAppointmentBooking.entities.Patient;
import com.DoctorAppointmentBooking.services.Patientservices;

@Controller

public class AdminController {
	@Autowired
	Patientservices patiser;
	
	
	@GetMapping("/admin_dashboard")
	public String adminhome(Model m) {
		 List<Patient> patients=patiser.getAllpatient();
		  
		  m.addAttribute("patient", patients);
		return "adminhome";
	}
}
