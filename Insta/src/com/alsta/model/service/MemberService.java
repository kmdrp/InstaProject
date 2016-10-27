package com.alsta.model.service;

import com.alsta.model.domain.Member;

public interface MemberService {
	public int regist(Member member);
	public int updateDetail(Member member);
	public int updatePassword(Member member);
}
