package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.CatDAO;

@Controller
public class CatController {
	
	@Autowired
	private CatDAO dao;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(
			Model model
			) {
		model.addAttribute("cats", dao.findAll());
		return "index";
	}
	
}
