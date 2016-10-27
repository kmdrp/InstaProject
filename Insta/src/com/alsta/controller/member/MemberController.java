package com.alsta.controller.member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Member;
import com.alsta.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	public String regist(Member member){
		int result=memberService.regist(member);
		ModelAndView mav=new ModelAndView();
		return "index";
	}
}
