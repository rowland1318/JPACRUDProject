package com.skilldistillery.jpacrud.controllers;

import java.util.List;

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
	
	@RequestMapping(path = "listCats.do")
	public String showFilm(Model model) {
		model.addAttribute("cats", dao.findAll());
		return "Cat/listAllCats";
	}

	@RequestMapping(path = "getCat.do", method = RequestMethod.GET, params = "cid")
	public String showCat(@RequestParam Integer cid, Model model) {
		String viewName = "Cat/showCatDetails";
		Cat cat = dao.findById(cid);
		model.addAttribute("cat", cat);
		return viewName;
	}

	@RequestMapping(path = "addCat.do", method = RequestMethod.POST)
	public ModelAndView addCat(Cat cat) {
		dao.addCat(cat);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path = "deleteCat.do", method = RequestMethod.POST)
	public String deleteCat(@RequestParam("cat") int id) {
		Cat cat = dao.findById(id);
		dao.deleteCat(cat);
		return "index";
	}
	
	// update organism
		@RequestMapping(path = "updatePage.do", method = RequestMethod.POST)
		public ModelAndView updateCat(@RequestParam("cat") int id) {
			Cat cat = dao.findById(id);
			ModelAndView mv = new ModelAndView();
			mv.addObject("cat", cat);
			mv.setViewName("update");
			return mv;
		}
		
		@RequestMapping(path = "updateCat.do", method = RequestMethod.POST)
		public String updateCat(@RequestParam("id")int id, Cat cat) {
			dao.updateCat(cat, id);
			return "index";
		}

}
