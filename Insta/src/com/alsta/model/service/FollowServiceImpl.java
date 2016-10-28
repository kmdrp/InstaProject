package com.alsta.model.service;


import com.alsta.model.domain.Follow;
import com.alsta.model.spring.dao.FollowDAOMybatis;

public class FollowServiceImpl implements FollowService{
	private FollowDAOMybatis followDAOMybatis;
	@Override
	public int regist(Follow follow) {
		return followDAOMybatis.insert(follow);
	}

	@Override
	public int delete(int follow_id) {
		return 0;
	}

}
