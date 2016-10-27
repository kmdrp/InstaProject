package com.alsta.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Follow;

@Repository
public interface FollowDAO {
	public int insert(Follow follow);
	public int update(Follow follow);
	public int delete(int follow_id);
	public List selectList(int follow_id);
	public void selectOne(Follow follow);
}
