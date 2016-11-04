package com.alsta.model.service;

import java.util.List;

import com.alsta.model.domain.Comments;

public interface MainPageService {
	public List selectAll();
	public int regist(Comments comments);
	public List selectList(int member_id);
	public List selectOne(int post_id);
	public List searchList(String data);
}
