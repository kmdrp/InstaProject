package com.alsta.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.alsta.model.domain.Love;
import com.alsta.model.domain.Member;
import com.alsta.model.domain.Post;

public interface MemberService {
	public int regist(Member member);//////////
	public int updateDetail(Member member);//////////////////
	public int updatePassword(Member member);////////////////////
	public Member selectOne(int member_id);/////////////////
	public int registPost(Post post,HttpServletRequest request);
	public List logIn(Member member);
	public Map love(Love love);
}
