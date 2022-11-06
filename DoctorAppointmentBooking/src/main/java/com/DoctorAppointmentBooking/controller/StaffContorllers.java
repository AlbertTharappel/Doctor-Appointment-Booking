package com.DoctorAppointmentBooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.DoctorAppointmentBooking.entities.Patient;
import com.DoctorAppointmentBooking.entities.book;

import com.DoctorAppointmentBooking.services.Patientservices;


@Controller
public class StaffContorllers {
	
	@Autowired
	Patientservices patientservices;

	
	@GetMapping("/staffreg")
	public String staffsave(Model m) {
		
		m.addAttribute("user", new Patient());
		
		return "staffreg";
	}
	
	@PostMapping("/save3")
	public String saveAllstaff(@ModelAttribute("user") Patient user) {
		user.setUsertype("staff");
		patientservices.savepatient(user);
		return "redirect:/staffdetails";
	}
	
	
	@GetMapping("/staffdetails")
	public String DisplayStaff(Model m) {
		
		List<Patient> staff=patientservices.getAllStaff();
		
		m.addAttribute("staff", staff);
		return "liststaff";
	}
	
	@GetMapping("/delete/{id}")
	public String RemoveStaff(@PathVariable("id") int id) {
		
		patientservices.removeStaff(id);
		return "redirect:/staffdetails";
	}
	
	@GetMapping("/profiledetails")
	public String staffhome() {
		
		return "profiledetails";
	}
	
	@GetMapping("/edit/{id}")
	public String getStaffUserById(@PathVariable("id") int id , Model m) {
		
		Patient p = patientservices.getStaffByid(id);
		m.addAttribute("staff",p);
		return "staffupdate";
		
	}
	
	@PostMapping("/update")
	public String updateStaff(@ModelAttribute("staff") Patient p) {
		
		patientservices.updateStaffUser(p);
		return "redirect:/staffdetails";
	}
	@GetMapping("/request")
		public String requestpage(Model m) {
		List<book> books=patientservices.getAlldetails();
		m.addAttribute("book", books);
		return "request";
	}
	@GetMapping("/bookdetails")
	public String appointmentbookdetails() {
		
		return "bookdetails";
	}
	@GetMapping("/bookhistory")
	public String requestbook(Model m) {
	List<book> bookhistory=patientservices.getAllBookdetails();
	/*
	 * for (book book : bookhistory) { if(book.getStatus().equals("approve")) {
	 * System.out.println(book.getId());
	 * m.addAttribute("approve",book.getStatus().equals("approve")); }else {
	 * m.addAttribute("cancel",book.getStatus().equals("cancel")); } }
	 */
	m.addAttribute("book", bookhistory);
	return "bookdetails";
}
}
