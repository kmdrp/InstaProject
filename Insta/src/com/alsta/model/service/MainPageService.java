package com.alsta.model.service;

import java.util.List;

import com.alsta.model.domain.Comments;

public interface MainPageService {
	public List selectAll();
	public int regist(Comments comments);
}
