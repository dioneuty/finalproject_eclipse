 package com.hb.project;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/main/index";
	}
	
	@RequestMapping("/introduce")
	public String intro(){
		return "/main/introduce";
	}
	
	@RequestMapping("/login")
	public String login(){
		System.out.println("login");
		return "/main/login";
	}
	@RequestMapping("/board")
	public String board(){
		return "/main_board/board";
	}
	@RequestMapping("/detail")
	public String detail(){
		return "/main_board/detail";
	}
	@RequestMapping("/modify")
	public String modify(){
		return "/main_board/modify";
	}
	@RequestMapping("/one_to_one")
	public String one_to_one(){
		return "/main_board/one_to_one";
	}
	
}
