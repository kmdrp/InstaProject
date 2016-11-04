package com.alsta.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alsta.model.domain.Comments;
import com.alsta.model.service.FollowService;
import com.alsta.model.service.MainPageService;

@Controller
@RequestMapping("/alsta/")
public class MainPageController {
	@Autowired
	private MainPageService mainPageService;
	@Autowired
	private FollowService followService;
	/*@RequestMapping("post.do")
	public ModelAndView selectAll(){
		List list = mainPageService.selectAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("post",list);
		mav.setViewName("/alsta/main");
		return mav;
	}*/
	
	//ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ò·ï¿½ï¿½ï¿½ï¿½ï¿½
	@RequestMapping("post.do")
	public ModelAndView selectList(HttpServletRequest request){
		int member_id = (int)request.getSession().getAttribute("member_id");
		List list = mainPageService.selectList(member_id);
		List followList=followService.selectAll(member_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("post",list);
		mav.addObject("follow",followList);
		mav.setViewName("/alsta/main");
		return mav;
	}

	@RequestMapping("yPost.do")
	public ModelAndView selectList(int member_id){
		List list = mainPageService.selectList(member_id);
		List followList=followService.selectAll(member_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("post",list);
		mav.addObject("follow",followList);
		mav.setViewName("/alsta/main");
		return mav;
	}
	//°Ë»öÆäÀÌÁö ºÒ·¯¿À±â
		@RequestMapping("search.do")
		public ModelAndView searchList(HttpServletRequest request,String data){
			System.out.println(data);
			int member_id = (int)request.getSession().getAttribute("member_id");
			List list = mainPageService.searchList(data);
			ModelAndView mav = new ModelAndView();
			mav.addObject("post",list);
			mav.setViewName("/alsta/search");
			return mav;
		}
	
	
	//ï¿½ï¿½Ûµï¿½ï¿½
	@RequestMapping("comments.do")
	public String regist(Comments comments){
		mainPageService.regist(comments);
		return "redirect:/alsta/post.do";
	}
	
	//ï¿½ï¿½ï¿½ ï¿½Ï³ï¿½ ï¿½Ò·ï¿½ï¿½ï¿½ï¿½ï¿½
	@RequestMapping("commentsOne.do")
	@ResponseBody
	public List selectOne(int post_id){
		List list = mainPageService.selectOne(post_id);
		return list;
	}
	
}
