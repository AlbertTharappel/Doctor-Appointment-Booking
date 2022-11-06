package com.DoctorAppointmentBooking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.DoctorAppointmentBooking.entities.Doctor;
import com.DoctorAppointmentBooking.entities.Patient;
import com.DoctorAppointmentBooking.entities.book;
import com.DoctorAppointmentBooking.services.Doctorservices;
import com.DoctorAppointmentBooking.services.Patientservices;

@Controller
public class PatientControllers {

	@Autowired
	Patientservices patiser;
	@Autowired
	Doctorservices docser;
	
	@GetMapping("/")
	public String home(Model m) {
		
		List<Doctor> doctor = docser.getAllDoctor();

		m.addAttribute("doctor", doctor);
		return "index";
	}
	
	@GetMapping("/login")
	public String loginForm(Model m) {
		m.addAttribute("patient",new Patient());
		return "login";
	}
	
	@GetMapping("/patientreg")
	public String saveform(Model m) {
		
		m.addAttribute("patient",new Patient());
		return "patientreg";
	}
	
	@PostMapping("/save")
	public String saveAllpatient(@ModelAttribute("patient")Patient patient , Model m) {
		
		
		boolean e = patiser.checkEmail(patient.getEmail());
		
		if(e) {
			
			m.addAttribute("errorMessage" , "User with this email address is already exists");
			return "/patientreg";
			
		}else {
			
			patient.setUsertype("user");
			patiser.savepatient(patient);
			return "/login";
		}
		
		
	}
	
	@PostMapping("/logincheck")
	public String Login(Model m,@RequestParam String email,@RequestParam String password, HttpSession session) {
		
		Patient user = patiser.LoginCheck(email, password);
		
		if(user !=null ) {
			
		session.setAttribute("user", user);	
			
		if(user.getUsertype().equals("admin")) {
				
				return "redirect:/admin_dashboard";
				
			}else if(user.getUsertype().equals("staff")) {
				
				return "/staffhome";
				
			}else{
				
				session.setAttribute("user", user);
				return "redirect:/user_dashboard";
			}	
			
		}else {
			
			m.addAttribute("message", "email or password failed");								//print error message
			
			  
			return "/login";
		}
			
		
		
	}
	
	  @GetMapping("/logout")
	  public String Logout(HttpSession httpSession) {
		  
		  httpSession.invalidate();
		  return "redirect:/";
		  
	  }
	  @GetMapping("/patientdetails")
	  public String DisplayPatient(Model m) {
		  
		  List<Patient> patients=patiser.getAllpatient();
		  
		  m.addAttribute("patient", patients);
		  return "patientdetails";
	  }
	  @GetMapping("/user_dashboard")
	  public String userhome() {
		  
		  return "userhome";
	  }
	  
	  @GetMapping("/booking")
	  public String booking(Model m,@Param("speciality") String speciality) {
		 
			  List<Doctor> doctor = docser.getDoctor(speciality);
			  m.addAttribute("search",speciality);
			  m.addAttribute("doctor", doctor);
		  return "booking";
	  }
	  @GetMapping("/profile/{id}")
	  public String profilehome(@PathVariable("id")int id) {
		
		  patiser.patientById(id);
		  return "profile";
	  }

	  @GetMapping("/edit-patient/{id}")
	  public String getPatientById(@PathVariable("id") int id,Model m) {

		  Patient patient = patiser.getPatientById(id);
		  m.addAttribute("patient",patient);
		  return "profileupdate";
	  }
	  
	  @PostMapping("update1")
	  public String savepatient(@ModelAttribute("patient") Patient patient) {
		  patiser.updateprofile(patient);
		  return "/profileupdate";
	  }
	  
	  @GetMapping("/appointmentbook")
	  public String appointment(Model m) {
		  m.addAttribute("p", new Patient());
		  m.addAttribute("d", new Doctor());
		  
		  return "appointmentbook";
	  }
	  
	  @PostMapping("savebook")
	  public String booking(@ModelAttribute("p") Patient p,@ModelAttribute("d")Doctor d,@ModelAttribute("b")book b) {
		
		  b.setStatus("pending");
		  patiser.savebook(b, p, d);
		  return "redirect:/book";
	  }
	  
	  @GetMapping("/appointment-booking/{id}")
		public String getBookId(@PathVariable("id") int id, Model m) {

			Doctor doc = docser.getDocById(id);
			m.addAttribute("doctor", doc);
			return "appointmentbook";
		}
	  @GetMapping("/approve/{id}")
	  public String Approve(@PathVariable("id") int id) {
		  
		  patiser.approvemethod(id);
		  return "redirect:/request";
	  }
	  @GetMapping("/cancel/{id}")
	  public String Cancel(@PathVariable("id") int id) {
		  
		  patiser.cancelmethod(id);
		  return "redirect:/request";
	  }
	  @GetMapping("/userbookdetails")
		public String appointmentbookdetails() {
			
			return "userbookdetails";
		}
	  @GetMapping("/book")
	  public String bookdetails(HttpSession session,Model m) {
		  
		Patient p=(Patient)session.getAttribute("user");
		session.setAttribute("user", p);
		List<book>b=patiser.getuserBookingById(p.getId());
		m.addAttribute("book",b);
		return "userbookdetails";
		
	  }
	  @GetMapping("/updateprofile/{id}")
	  public String Updateprofile(@PathVariable("id") int id) {
		  
		  patiser.getPatientById(id);
		  return "/profileupdate";
	  }
	  @PostMapping("/updateuserprofile")
	  public String updateuserprofile(@ModelAttribute("user")Patient p,HttpSession session) {
		
		  String firstname=p.getFirstname();
		  String lastname=p.getLastname();
		  String age=p.getAge();
		  String address=p.getAddress();
		  String phonenumber=p.getPhonenumber();
		  String email=p.getEmail();
		  String password=p.getPassword();
		  
		  Patient patient=(Patient)session.getAttribute("user");
		  patient.setFirstname(firstname);
		  patient.setLastname(lastname);
		  patient.setAge(age);
		  patient.setAddress(address);
		  patient.setPhonenumber(phonenumber);
		  patient.setEmail(email);
		  patient.setPassword(password);
		  patiser.updateprofile(patient);
		  return "redirect:/user_dashboard";
	  }
	  
}