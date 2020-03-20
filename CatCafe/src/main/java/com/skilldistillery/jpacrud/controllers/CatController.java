package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.CatDAO;
import com.skilldistillery.jpacrud.entities.Cat;

@Controller
public class CatController {

	@Autowired
	private CatDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("cats", dao.findAll());
		return "index";
	}
	
	@RequestMapping(path = "createCatPage.do")
	public String createPage() {
		return "Cat/createCat";
	}

	@RequestMapping(path = "getCat.do", method = RequestMethod.GET, params = "cid")
	public String showCat(@RequestParam Integer cid, Model model) {
		String viewName = "Cat/show";
		Cat cat = dao.findById(cid);
		model.addAttribute("cat", cat);
		return viewName;
	}

	@RequestMapping(path = "addCat.do", method = RequestMethod.POST)
	public ModelAndView newCat(Cat cat) {
		dao.addCat(cat);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

}
