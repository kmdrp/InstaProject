package com.alsta.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alsta.model.dao.CommentsDAO;
import com.alsta.model.dao.PostDAO;
import com.alsta.model.domain.Comments;
@Service
public class MainPageServiceImpl implements MainPageService{
	@Autowired
	@Qualifier("postDAOMybatis")
	private PostDAO postDAO;
	
	@Autowired
	@Qualifier("commentsDAOMybatis")
	private CommentsDAO commentsDAO;
	
	public List selectAll() {
		List list = (List)postDAO.selectAll();
		return list;
	}

	public int regist(Comments comments) {
		commentsDAO.insert(comments);
		return 0;
	}
	
	public List selectList(){
		List list = postDAO.selectList();
		return list;
	}

	
	


}
