package com.alsta.model.dao;

import java.awt.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Comments;

@Repository
public interface CommentsDAO {
	public int insert(Comments comments);
	public int update(Comments comments);
	public int delete(int comment_id);
	public List selectList(int member_id);
	public void selectOne(Comments comments);
}
