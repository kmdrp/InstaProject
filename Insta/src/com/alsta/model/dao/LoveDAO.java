package com.alsta.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Love;

@Repository
public interface LoveDAO {
	public int insert(Love love);
	public int update(Love love);
	public int delete(Love love);
	public List selectList(int love_id);
	public void selectOne(Love love);
	public List selectList(Love love);
}
