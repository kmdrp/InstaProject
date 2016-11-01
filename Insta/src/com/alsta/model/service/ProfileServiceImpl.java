package com.alsta.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.alsta.model.dao.FollowDAO;
import com.alsta.model.dao.MemberDAO;
import com.alsta.model.dao.PostDAO;
import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Member;

@Service
public class ProfileServiceImpl implements ProfileService{
	@Autowired
	@Qualifier("postDAOMybatis")
	private PostDAO postDAO;
	
	@Autowired
	@Qualifier("memberDAOMybatis")
	private MemberDAO memberDAO;
	
	@Autowired
	@Qualifier("followDAOMybatis")
	private FollowDAO followDAO;
	
	public Member selectOne(int member_id) {
		Member member=memberDAO.selectOne(member_id);
		return member;
	}
	public List followByMe(int member_id) {
		List followList=(List)followDAO.followByMe(member_id);
		return followList;
	}
	public List followMe(int member_id) {
		List followerList=(List)followDAO.followMe(member_id);
		return followerList;
	}
	public List selectMy(int pomem_id) {
		List list=postDAO.selectMy(pomem_id);
		return list;
	}
}
