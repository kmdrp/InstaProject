package com.alsta.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Comments;
@Repository
public interface CommentsDAO {
	public int insert(Comments comments);
	public List selectOne(int post_id);
	public List selectAll();
}
