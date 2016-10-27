package com.alsta.model.spring.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alsta.model.dao.PostDAO;
import com.alsta.model.domain.Post;
@Repository
public class PostDAOMybatis implements PostDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public int insert(Post post) {
		return 0;
	}

	public int update(Post post) {
		return 0;
	}

	public int delete(int post_id) {
		return 0;
	}

	public List selectList(int post_id) {
		return null;
	}

	public void selectOne(Post post) {
		
	}

	public List selectAll() {
		List list = (List)sessionTemplate.selectList("Post.selectAll");
		return list;
	}
}
