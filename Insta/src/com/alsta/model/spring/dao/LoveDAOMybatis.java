package com.alsta.model.spring.dao;

import java.util.ArrayList;
import java.util.List;

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
		int result=sessionTemplate.update("LoveMapper.insert", love);
		return result;
	}

	public int update(Love love) {
		return 0;
	}

	public int delete(Love love) {
		int result=sessionTemplate.delete("LoveMapper.delete", love);
		return result;
	}

	public List selectList(int post_id) {
		List list=sessionTemplate.selectList("LoveMapper.selectList", post_id);
		return list;
	}

	public void selectOne(Love love) {
		
	}

	public List selectList(Love love) {
		List list=new ArrayList();
		list=sessionTemplate.selectList("LoveMapper.search",love);
		return list;
	}
}
