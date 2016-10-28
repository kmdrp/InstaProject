package com.alsta.controller.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Post;
import com.alsta.model.service.FollowService;

@Controller
@RequestMapping("/alsta/")
public class FollowController {
	@Autowired
	private FollowService followService;
	
	@RequestMapping("follow.do")
	public ModelAndView regist(Follow follow){
		int result=followService.regist(follow);
		ModelAndView mav = new ModelAndView("/alsta/friend");
		
		return mav;
	}
	@RequestMapping("followList.do")
	public ModelAndView selectAll(int member_id){
		List list=followService.selectAll(member_id);
		ModelAndView mav=new ModelAndView("/alsta/friend");
		mav.addObject("list", list);
		return mav;
	}
}
