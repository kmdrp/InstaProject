package com.alsta.controller.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.dao.MemberDAO;
import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Member;
import com.alsta.model.service.FollowService;

@Controller
@RequestMapping("/alsta/")
public class FollowController {
	@Autowired
	private FollowService followService;
	@Autowired
	private MemberDAO memberDAO;

	
	@RequestMapping("follow.do")
	public ModelAndView regist(Follow follow){
		int result=followService.regist(follow);
		ModelAndView mav = new ModelAndView("/alsta/friend");
		mav.addObject("result", result);
		return mav;
	}
	@RequestMapping("followList.do")
	public ModelAndView selectAll(int member_id){
		List list=followService.selectAll(member_id);
		
		List listMember = new ArrayList();
		
		for(int i=0;i<list.size();i++){
			Follow follow=(Follow)list.get(i);
		
			Member member=memberDAO.selectOne(follow.getYou());
		
			listMember.add(member);
		}
		
		ModelAndView mav=new ModelAndView("/alsta/friend");
		mav.addObject("list", list);
		mav.addObject("member", listMember);
		return mav;
	}
}
