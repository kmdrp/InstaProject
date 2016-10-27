package com.alsta.controller.member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Member;
import com.alsta.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService memberService;
	@RequestMapping("regist.do")
	public String regist(Member member){
		int result=memberService.regist(member);
		ModelAndView mav=new ModelAndView();
		return "index";
	}
}
