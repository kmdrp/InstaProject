package com.alsta.model.service;

import java.util.List;

import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Post;

public interface FollowService {
	public int regist(Follow follow);
	public int delete(int follow_id);
	public List selectAll(int member_id);
}
