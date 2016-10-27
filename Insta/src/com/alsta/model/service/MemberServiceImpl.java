package com.alsta.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alsta.model.dao.MemberDAO;
import com.alsta.model.domain.Member;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO; 
	public int regist(Member member) {
		int result=memberDAO.insert(member);
		String view=null;
		return result;
	}

}
