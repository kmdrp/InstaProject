package com.alsta.model.service;

import com.alsta.model.domain.Follow;

public interface FollowService {
	public int regist(Follow	follow);
	public int delete(int follow_id);
}
