package com.alsta.model.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alsta.model.dao.CommentsDAO;
import com.alsta.model.domain.Comments;
@Repository
public class CommentsDAOMybatis implements CommentsDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public int insert(Comments comments) {
		sessionTemplate.insert("Comments.insert",comments);
		return 0;
	}

	public List selectOne(int post_id) {
		List list = sessionTemplate.selectList("Comments.selectOne", post_id);
		return list;
	}

	
	public List selectAll() {
		List list = sessionTemplate.selectList("Comments.selectAll"); 
		return list;
	}
}
