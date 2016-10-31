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
		return sessionTemplate.insert("Post.insert", post);
	}

	public int update(Post post) {
		return 0;
	}

	public int delete(int post_id) {
		return 0;
	}

	public List selectList() {
		List list = sessionTemplate.selectList("Post.selectList");
		return list;
	}

	public void selectOne(Post post) {
		
	}

	public List selectAll() {
		List list = sessionTemplate.selectList("Post.selectAll");
		return list;
	}
	
	public List selectMy(int pomem_id){
		List list=sessionTemplate.selectList("Post.selectMy",pomem_id);
		return list;
	}
}
