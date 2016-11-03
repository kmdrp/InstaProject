package com.alsta.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Comments;
import com.alsta.model.service.MainPageService;

@Controller
@RequestMapping("/alsta/")
public class MainPageController {
	@Autowired
	private MainPageService mainPageService;
	
	/*@RequestMapping("post.do")
	public ModelAndView selectAll(){
		List list = mainPageService.selectAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("post",list);
		mav.setViewName("/alsta/main");
		return mav;
	}*/
	
	@RequestMapping("comments.do")
	public String regist(Comments comments){
		mainPageService.regist(comments);
		return "redirect:/alsta/post.do";
	}
	
	@RequestMapping("post.do")
	public ModelAndView selectList(HttpServletRequest request){
		int member_id = (int)request.getSession().getAttribute("member_id");
		List list = mainPageService.selectList(member_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("post",list);
		mav.setViewName("/alsta/main");
		return mav;
	}
	
	
}
