package com.alsta.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Member;
@Repository
public interface MemberDAO {
	public int insert(Member member);//ȸ������
	public int updateDetail(Member member);//ȸ������ ����
	public int updatePassword(Member member);//ȸ������ ����
	public int delete(int member_id);//ȸ�� ����
	public Member selectOne(int member_id);//ģ�� ��(), ȸ�� ��
}
