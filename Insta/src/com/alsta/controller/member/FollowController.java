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
	public String regist(Follow follow){
	
		followService.regist(follow);
		return "redirect:/alsta/followList.do?member_id="+follow.getMe();
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
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("member", listMember);
		mav.setViewName("alsta/friend");
		return mav;
	}
}
