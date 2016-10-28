package com.alsta.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Follow;
import com.alsta.model.service.FollowService;

@Controller
@RequestMapping("/alsta/")
public class FollowController {
	@Autowired
	@Qualifier("followServiceImpl")
	private FollowService followService;
	@RequestMapping("follow.do")
	public ModelAndView regist(Follow follow){
		int resutl=followService.regist(follow);
		ModelAndView mav = new ModelAndView("/alsta/main");
		mav.addObject("follow", follow);
		return mav;
	}
	
	
}
