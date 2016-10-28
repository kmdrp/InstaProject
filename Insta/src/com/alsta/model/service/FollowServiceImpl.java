package com.alsta.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.alsta.model.dao.FollowDAO;
import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Post;

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

	@Override
	public List selectAll(int member_id) {
		List list=followDAO.selectAll(member_id);
		return list;
	}

}
