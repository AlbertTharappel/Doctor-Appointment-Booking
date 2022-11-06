package com.DoctorAppointmentBooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.DoctorAppointmentBooking.entities.Doctor;
import com.DoctorAppointmentBooking.services.Doctorservices;

@Controller
public class DoctorControllers {

	@Autowired
	Doctorservices docser;

	@GetMapping("/doctor")
	public String doctorsave(Model m) {

		m.addAttribute("doctor", new Doctor());
		return "doctoradd";
	}

	@PostMapping("/doctorlogin")
	public String doctorlogin(Model m) {

		m.addAttribute("doctor", new Doctor());
		return "redirect:/doctor";
	}

	@PostMapping("/save1")
	public String saveAlldoctor(@RequestParam("file") MultipartFile file,Model m,@ModelAttribute("doctor") Doctor doctor) {
		docser.savedoctor(file, doctor);
		return "redirect:/doctordetails";

	}

	@GetMapping("/doctordetails")
	public String DisplayDoctor(Model m) {

		List<Doctor> doctor = docser.getAllDoctor();

		m.addAttribute("doctor", doctor);
		return "listdoctor";
	}

	@GetMapping("/delete1/{id}")
	public String RemoveDoctor(@PathVariable("id") int id) {

		docser.removeDoctor(id);
		return "redirect:/doctordetails";
	}

	@GetMapping("/edit-doctor/{id}")
	public String getDoctorById(@PathVariable("id") int id, Model m) {

		Doctor doc = docser.getDocById(id);
		m.addAttribute("doctor", doc);
		return "doctorupdate";

	}
	
	@PostMapping("/update-doctor")
	public String Updatedoctor(MultipartFile file,@ModelAttribute("doctor")Doctor d) {
		docser.updatedoctor(file, d); ///
		return "redirect:/doctordetails";

	}

}
