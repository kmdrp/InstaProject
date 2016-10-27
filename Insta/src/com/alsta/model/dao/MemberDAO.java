package com.alsta.model.dao;

import java.awt.List;

import org.springframework.stereotype.Repository;

import com.alsta.model.domain.Member;
@Repository
public interface MemberDAO {
	public int insert(Member member);//ȸ������
	public int update(Member member);//ȸ������ ����
	public int delete(int member_id);//ȸ�� ����
	public List selectList(int member_id);//ģ�� ã��
	public void selectOne(Member meber);
}
