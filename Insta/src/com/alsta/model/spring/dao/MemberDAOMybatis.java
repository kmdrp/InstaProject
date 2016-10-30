package com.alsta.model.spring.dao;

import java.util.ArrayList;
import java.util.List;

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
		return sessionTemplate.update("MemberMapper.insert", member);
	}
	public int updateDetail(Member member) {
		return sessionTemplate.update("MemberMapper.updateDetail",member);
	}
	public int updatePassword(Member member) {
		return sessionTemplate.update("MemberMapper.updatePassword",member);
	}
	public int delete(int member_id) {
		return 0;
	}
	public Member selectOne(int member_id) {
		return sessionTemplate.selectOne("MemberMapper.selectOne", member_id);
	}
	public List selectList(Member member) {
		List list=sessionTemplate.selectList("MemberMapper.selectList", member);
		System.out.println(list.size());
		return list;
	}
}
