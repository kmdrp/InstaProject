package com.alsta.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.alsta.model.dao.PostDAO;
@Service
public class MainPageServiceImpl implements MainPageService{
	@Autowired
	@Qualifier("postDAOMybatis")
	private PostDAO postDAO;
	public List selectAll() {
		List list = (List)postDAO.selectAll();
		return list;
	}

}
