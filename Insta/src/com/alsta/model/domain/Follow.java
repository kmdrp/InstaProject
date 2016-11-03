package com.alsta.model.domain;

import java.util.List;

public class Follow {
	private int follow_id;
	private int me;
	private int you;
	private Member member;
	private List<Post> postList;
	
	public int getFollow_id() {
		return follow_id;
	}
	public void setFollow_id(int follow_id) {
		this.follow_id = follow_id;
	}
	public int getMe() {
		return me;
	}
	public void setMe(int me) {
		this.me = me;
	}
	public int getYou() {
		return you;
	}
	public void setYou(int you) {
		this.you = you;
	}
	public Member getMemberl() {
		return member;
	}
	public void setMemberl(Member member) {
		this.member = member;
	}
	public List getPostList() {
		return postList;
	}		
	public void setPostList(List postList) {
		this.postList = postList;
	}
}
