package com.alsta.model.dao;

import java.awt.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aslta.model.domain.Member;
@Repository
public class MemberDAOMybatis implements MemberDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	public int insert(Member member) {
		String sql="insert into member() values()";
		int result=sessionTemplate.update(sql, member);
		return result;
	}

	public int update(Member member) {
		return 0;
	}

	public int delete(int member_id) {
		return 0;
	}

	public List selectList(int member_id) {
		return null;
	}

	public void selectOne(Member meber) {
		
	}

}
