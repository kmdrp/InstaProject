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

	public int update(Comments comments) {
		return 0;
	}

	public int delete(int comments_id) {
		return 0;
	}

	public List selectList(int comments_id) {
		return null;
	}

	public void selectOne(Comments comments) {
		
	}
}
