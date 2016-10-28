package com.alsta.model.dao;

import java.awt.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Follow;

@Repository
public interface FollowDAO {
	public int insert(Follow follow);
	public int delete(int follow_id);
	public List selectAll();
	public Follow selectOne(int follow_id);
}
