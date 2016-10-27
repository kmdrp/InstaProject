package com.alsta.model.spring.dao;

import java.awt.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alsta.model.dao.LoveDAO;
import com.alsta.model.domain.Love;
@Repository
public class LoveDAOMybatis implements LoveDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public int insert(Love love) {
		return 0;
	}

	public int update(Love love) {
		return 0;
	}

	public int delete(int love_id) {
		return 0;
	}

	public List selectList(int love_id) {
		return null;
	}

	public void selectOne(Love love) {
		
	}
}
