package com.alsta.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Post;

@Repository
public interface FollowDAO {
	public int insert(Follow follow);
	public int delete(int follow_id);
	public List selectAll(int member_id);
	public Follow selectOne(int follow_id);
}
