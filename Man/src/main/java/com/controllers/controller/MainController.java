package com.controllers.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.controllers.dao.OfficeDao;
import com.controllers.model.Office;

@Controller
public class MainController {
	
	@Autowired
	private OfficeDao officeDao;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/addOffice")
	public String addPatient(Model m) {
		m.addAttribute("title", "Add Office");
		return "Office";
	}
	
	@RequestMapping(value="/office", method=RequestMethod.POST)
	public RedirectView Patientadded(@ModelAttribute Office office, HttpServletRequest request) {
		
		System.out.println(office);
		officeDao.createPatient(office);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	
	@RequestMapping(value="/office", method=RequestMethod.GET)
	public String getPatient(Model model) {
	
		List<Office> office = officeDao.getPatient();
		
		model.addAttribute("office",office);
		
		return "office/office";
		
	}
	

	@RequestMapping(value="update/{id}")
	public String updatePatient(@PathVariable ("id") int id, Model model ) {
		
		Office office=this.officeDao.getPatient(id);
		model.addAttribute("office", office);
		
		return "office/editOffice";
	}
	

	@RequestMapping(value="remove/{id}")
	public RedirectView removePatient(@PathVariable ("id") int id, HttpServletRequest request ) {
		
		this.officeDao.deletePatient(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/office");
		
		return redirectView;
	}
}