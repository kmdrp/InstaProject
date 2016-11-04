package com.alsta.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Follow;
import com.alsta.model.service.FollowService;

@Controller
@RequestMapping("/alsta/")
public class FollowController {
	@Autowired
	private FollowService followService;

	
	
	
	@RequestMapping("follow.do")
	public String regist(Follow follow){
	
		followService.regist(follow);
		return "redirect:/alsta/followList.do?member_id="+follow.getMe();
	}
	
	@RequestMapping("followList.do")
	public ModelAndView selectAll(HttpServletRequest request){
		HttpSession session=request.getSession();
		int member_id=(int)session.getAttribute("member_id");
		List list=followService.selectAll(member_id);
	
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("/alsta/friend");
		return mav;
	}
	
}
