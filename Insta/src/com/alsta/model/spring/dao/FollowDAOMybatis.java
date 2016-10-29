package com.alsta.model.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alsta.model.dao.FollowDAO;
import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Post;
@Repository
public class FollowDAOMybatis implements FollowDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public int insert(Follow follow) {
		System.out.println(follow.getMe());
		System.out.println(follow.getYou());
		int result=sessionTemplate.insert("Follow.insert", follow);
		return result;
	}



	public int delete(int follow_id) {
		int result=sessionTemplate.delete("Follow.delete", follow_id);
		return result;
	}

	public List selectAll(int member_id) {
		System.out.println("member_id는"+member_id);
		List list=(List)sessionTemplate.selectList("Follow.selectAll",member_id);
		return list;
	}

	public Follow selectOne(int follow_id) {
		Follow follow=sessionTemplate.selectOne("Follow.selectOne", follow_id);
		return follow;
	}
}
