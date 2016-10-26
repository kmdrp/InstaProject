package com.alsta.model.dao;

import java.awt.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Member;
@Repository
public interface MemberDAO {
	public int insert(Member member);//회원가입
	public int update(Member member);//회원정보 수정
	public int delete(int member_id);//회원 삭제
	public List selectList(int member_id);//친구 찾기
	public void selectOne(Member meber);
}
