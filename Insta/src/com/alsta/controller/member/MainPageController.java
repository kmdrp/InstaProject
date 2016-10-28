package com.alsta.controller.member;

import java.util.List;

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
	@Qualifier("mainPageServiceImpl")
	private MainPageService mainPageService;
	
	@RequestMapping("post.do")
	public ModelAndView selectAll(){
		List list = mainPageService.selectAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("post",list);
		mav.setViewName("/alsta/main");
		return mav;
	}
	
	@RequestMapping("comments.do")
	public String regist(Comments comments){
		mainPageService.regist(comments);
		return "redirect:/alsta/post.do";
	}
	
	@RequestMapping("cpost.do")
	public ModelAndView selectList(){
		List list = mainPageService.selectList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("cpost",list);
		mav.setViewName("/alsta/main");
		return mav;
	}
	
	
}
