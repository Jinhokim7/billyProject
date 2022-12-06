package com.billy.main;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.billy.VO.BillyMemberVO;

import com.billy.Service.IF_billyService;
import com.billy.VO.BillyGoodsVO;

@Controller
public class billyController {
	

	private IF_billyService bsrv;
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Locale locale, Model model) {
		
		return "billy/joinForm";
	}
	
	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String joinAction(Locale locale, Model model, BillyMemberVO bmVO) throws Exception { 
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) throws Exception{
		
		return "billy/login";
	}
	
	@RequestMapping(value = "/billyForm", method = RequestMethod.GET)
	public String billyForm(Locale locale, Model model) throws Exception {
		
		return "billy/billyForm";
	}
	@RequestMapping(value = "/billeyAction", method = RequestMethod.POST)
	public String billeyAction(Locale locale, Model model, BillyGoodsVO bvo, String gName ) throws Exception{
		System.out.println(gName);
		System.out.println(bvo.getCateNum());
		System.out.println(bvo.getgPrice());
//		bsrv.insertOne(bvo);			
//		return "redirect:/billyViewAll";
		return "billy/login";
	}
	
	@RequestMapping(value = "/billyViewAll", method = RequestMethod.GET)
	public String billyViewAll(Locale locale, Model model) {
		
		return "billy/billyViewAll";
	}
}
