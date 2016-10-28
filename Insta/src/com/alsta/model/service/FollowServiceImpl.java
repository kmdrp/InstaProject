package com.alsta.model.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.alsta.model.dao.FollowDAO;
import com.alsta.model.domain.Follow;
import com.alsta.model.spring.dao.FollowDAOMybatis;
@Service
public class FollowServiceImpl implements FollowService{
	@Autowired
	@Qualifier("followDAOMybatis")
	private FollowDAO followDAO;
	@Override
	public int regist(Follow follow) {
		return followDAO.insert(follow);
	}

	@Override
	public int delete(int follow_id) {
		return 0;
	}

}
