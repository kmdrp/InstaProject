package com.alsta.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alsta.model.dao.MemberDAO;
import com.alsta.model.domain.Member;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	@Qualifier("memberDAOMybatis")
	private MemberDAO memberDAO; 

	public int regist(Member member) {
		return memberDAO.insert(member);
	}
	public int updateDetail(Member member) {
		return memberDAO.updateDetail(member);
	}
	public int updatePassword(Member member) {
		return memberDAO.updatePassword(member);
	}
	public Member selectOne(int member_id) {
		return memberDAO.selectOne(member_id);
	}

}
