package com.alsta.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Comments;
@Repository
public interface CommentsDAO {
	public int insert(Comments comments);
	public int update(Comments comments);
	public int delete(int comments_id);
	public List selectList(int comments_id);
	public void selectOne(Comments comments);
}
