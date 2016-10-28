package com.alsta.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Member;
@Repository
public interface MemberDAO {
	public int insert(Member member);//회원가입
	public int updateDetail(Member member);//회원정보 수정
	public int updatePassword(Member member);//회원정보 수정
	public int delete(int member_id);//회원 삭제
	public Member selectOne(int member_id);//친구 상세(), 회원 상세
}
