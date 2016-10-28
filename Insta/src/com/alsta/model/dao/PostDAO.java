package com.alsta.model.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Post;

@Repository
public interface PostDAO {
	public int insert(Post post);
	public int update(Post post);
	public int delete(int post_id);
	public List selectList(int post_id);
	public void selectOne(Post post);
	public List selectAll();
	public List selectMy(int member_id);
}
