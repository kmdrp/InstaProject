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
		System.out.println(member.getEmail());
		System.out.println(member.getName());
		int result=memberDAO.insert(member);
		return result;
	}
	public int updateDetail(Member member) {
		
		return 0;
	}

	public int updatePassword(Member member) {

		return 0;
	}

}
