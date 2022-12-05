package com.billy.main;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class billyController {
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Locale locale, Model model) {
		
		return "billy/joinForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) {
		
		return "billy/login";
	}
	
	@RequestMapping(value = "/billyGoods", method = RequestMethod.GET)
	public String billyGoods(Locale locale, Model model) {
		
		return "billy/billyGoods";
	}
	
	@RequestMapping(value = "/billyViewAll", method = RequestMethod.GET)
	public String billyViewAll(Locale locale, Model model) {
		
		return "billy/billyViewAll";
	}
	
	@RequestMapping(value = "/villageBoard", method = RequestMethod.GET)
	public String villageBoard(Locale locale, Model model) {
		
		return "billy/villageBoard";
	}
	
	@RequestMapping(value = "/villageForm", method = RequestMethod.GET)
	public String villageForm(Locale locale, Model model) {
		
		return "village/villageForm";
	}
	
	
	
}
