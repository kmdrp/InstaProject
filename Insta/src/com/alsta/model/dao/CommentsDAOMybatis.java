package com.alsta.model.dao;

import java.awt.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Comments;
@Repository
public class CommentsDAOMybatis implements CommentsDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public int insert(Comments comments) {
		return 0;
	}

	public int update(Comments comments) {
		return 0;
	}

	public int delete(int comment_id) {
		return 0;
	}

	public List selectList(int member_id) {
		return null;
	}

	public void selectOne(Comments comments) {
		
	}
}
