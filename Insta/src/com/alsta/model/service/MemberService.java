package com.alsta.model.service;

import java.util.List;

import com.alsta.model.domain.Member;
import com.alsta.model.domain.Post;

public interface MemberService {
	public int regist(Member member);//////////
	public int updateDetail(Member member);//////////////////
	public int updatePassword(Member member);////////////////////
	public Member selectOne(int member_id);/////////////////
	public int registPost(Post post);
	public List logIn(Member member);
}
