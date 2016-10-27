package com.alsta.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.alsta.model.dao.MemberDAO;
import com.alsta.model.domain.Member;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	@Qualifier("memberDAOMybatis")
	private MemberDAO memberDAO; 
	public int regist(Member member) {
		System.out.println(member.getEmail());
		System.out.println(member.getName());
		int result=memberDAO.insert(member);
		String view=null;
		return result;
	}

}
