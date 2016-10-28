package com.alsta.model.spring.dao;

import java.awt.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Repository;

import com.alsta.model.dao.MemberDAO;
import com.alsta.model.domain.Member;
@Repository
public class MemberDAOMybatis implements MemberDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;	
	public int insert(Member member) {
		return sessionTemplate.update("Member.insert", member);
	}
	public int updateDetail(Member member) {
		return sessionTemplate.update("Member.updateDetail",member);
	}
	public int updatePassword(Member member) {
		return sessionTemplate.update("Member.updatePassword",member);
	}
	public int delete(int member_id) {
		return 0;
	}
	public Member selectOne(int member_id) {
		return sessionTemplate.selectOne("Member.selectOne", member_id);
	}
}
