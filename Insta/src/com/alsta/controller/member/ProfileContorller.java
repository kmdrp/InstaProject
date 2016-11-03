package com.alsta.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Member;
import com.alsta.model.service.ProfileService;

@Controller
@RequestMapping("/alsta/")
public class ProfileContorller {
	
	@Autowired
	private ProfileService profileService;
	
	@RequestMapping("profile.do")
	public ModelAndView getProfile(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		
		HttpSession session=request.getSession();
		int member_id=(Integer)session.getAttribute("member_id");
		System.out.println("Profile controller mem_id:"+member_id);
		Member member=profileService.selectOne(member_id);
		List followList=profileService.followByMe(member_id);	
		List followerList=profileService.followMe(member_id);
		List postList=profileService.selectMy(member_id);
		
		mav.addObject("member", member);
		mav.addObject("follow", followList);
		mav.addObject("follower", followerList);
		mav.addObject("post", postList);
		
		mav.setViewName("/alsta/profile");
		
		return mav;
	}
		
	@RequestMapping("preview.do")
	public ModelAndView getPreview(int post_id){
		ModelAndView mav =new ModelAndView();
		//사진에서  Postid를 어떻게가지고있어야하지:post_id를 img.id에심었고 사진을클릭하면 걔를 
		return mav;
	}
	
	
	

}
