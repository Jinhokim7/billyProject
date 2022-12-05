package com.billy.main;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.billy.Service.IF_billyService;
import com.billy.VO.BillyGoodsVO;

@Controller
public class billyController {
	
	@Inject		// 나 서비스 주입
	private IF_billyService bsrv;
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Locale locale, Model model) {
		
		return "billy/joinForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) throws Exception{
		
		return "billy/login";
	}
	
	@RequestMapping(value = "/billyForm", method = RequestMethod.GET)
	public String billyGoods(Locale locale, Model model) throws Exception {
		
		return "billy/billyForm";
	}
	@RequestMapping(value = "/billeyAction", method = RequestMethod.POST)
	public String billeyAction(Locale locale, Model model, BillyGoodsVO bvo, String gName ) throws Exception{
		//객체로 받을 때는 파라미터 이름과 객체의 변수의 이름이 일치하고  getter,setter가 있어야한다.>>자동매핑
		System.out.println(bvo.getgEndDate()+"---디버깅용도"); 
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
	
	@RequestMapping(value = "/villageBoard", method = RequestMethod.GET)
	public String villageBoard(Locale locale, Model model) {
		
		return "billy/villageBoard";
	}
	
	@RequestMapping(value = "/villageForm", method = RequestMethod.GET)
	public String villageForm(Locale locale, Model model) {
		
		return "village/villageForm";
	}
	
	
	
}
