package com.alsta.model.dao;

import java.awt.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Love;

@Repository
public interface LoveDAO {
	public int insert(Love love);
	public int update(Love love);
	public int delete(int love_id);
	public List selectList(int love_id);
	public void selectOne(Love love);
}