package com.project.portfolio;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping(value="/")
	public ModelAndView adminMainPage(HttpServletRequest req, HttpServletResponse res) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");
		
		return mv;
	}
}
