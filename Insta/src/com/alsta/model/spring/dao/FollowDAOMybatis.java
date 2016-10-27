package com.alsta.model.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alsta.model.dao.FollowDAO;
import com.alsta.model.domain.Follow;
@Repository
public class FollowDAOMybatis implements FollowDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public int insert(Follow follow) {
		return 0;
	}

	public int update(Follow follow) {
		return 0;
	}

	public int delete(int follow_id) {
		return 0;
	}

	public List selectList(int follow_id) {
		return null;
	}

	public void selectOne(Follow follow) {
		
	}
}
