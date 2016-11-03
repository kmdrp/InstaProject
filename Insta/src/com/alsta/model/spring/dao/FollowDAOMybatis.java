package com.alsta.model.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alsta.model.dao.FollowDAO;
import com.alsta.model.dao.MemberDAO;
import com.alsta.model.dao.PostDAO;
import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Member;
import com.alsta.model.domain.Post;
@Repository
public class FollowDAOMybatis implements FollowDAO{
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private PostDAO postDAO;
	
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

		List list=(List)sessionTemplate.selectList("Follow.selectAll",member_id);
		
		for(int i=0;i<list.size();i++){
			Follow follow=(Follow)list.get(i);
			Member member=memberDAO.selectOne(follow.getYou());
			int pomem_id=follow.getYou();
			List postList=postDAO.selectMy(pomem_id);
			follow.setMemberl(member);
			follow.setPostList(postList);;
		}
		return list;
	}

	public Follow selectOne(int follow_id) {
		Follow follow=sessionTemplate.selectOne("Follow.selectOne", follow_id);
		return follow;
	}
	public List followMe(int member_id){
		List list=(List)sessionTemplate.selectList("Follow.followMe",member_id);
		return list;
	}
	public List followByMe(int member_id){
		List list=(List)sessionTemplate.selectList("Follow.followByMe", member_id);
		return list;
	}

}
