package com.alsta.controller.member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.dao.MemberDAO;
import com.alsta.model.domain.Member;
import com.alsta.model.service.MemberService;

@Controller
@RequestMapping("/alsta/")
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
	@RequestMapping("edit.do")
	public ModelAndView memberDetail(int member_id){
		ModelAndView mav=new ModelAndView();
		Member member=memberService.selectOne(member_id);
		mav.addObject("member", member);
		mav.setViewName("alsta/edit");
		return mav;
	}
	@RequestMapping("password.do")
	public ModelAndView memberPassword(int member_id){
		ModelAndView mav=new ModelAndView();
		Member member=memberService.selectOne(member_id);
		mav.addObject("member", member);
		mav.setViewName("alsta/password");
		return mav;
	}
	@RequestMapping("updateDetail.do")
	public String updateDetail(Member member){
		int result=memberService.updateDetail(member);
		return "alsta/edit";
	}
	@RequestMapping("updatePassword.do")
	public String updatePassword(Member member){
		int result=memberService.updatePassword(member);
		return "alsta/password";
	}
}
