package com.alsta.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alsta.model.dao.MemberDAO;
import com.alsta.model.dao.PostDAO;
import com.alsta.model.domain.Member;
import com.alsta.model.domain.Post;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	@Qualifier("memberDAOMybatis")
	private MemberDAO memberDAO; 
	
	@Autowired
	@Qualifier("postDAOMybatis")
	private PostDAO postDAO;
	
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
	public int registPost(Post post) {
		post.getMyFile();
		return postDAO.insert(post);
	}
	public List logIn(Member dto) {
		List list=memberDAO.selectList(dto);
		return list;
	}

}
