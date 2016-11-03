package com.alsta.model.domain;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class Follow {
	private int follow_id;
	private int me;
	private int you;
	private Member member;
	
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
	

}
