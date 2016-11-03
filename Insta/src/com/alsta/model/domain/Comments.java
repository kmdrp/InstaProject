package com.alsta.model.domain;

public class Comments {

	private int comments_id;
	private int post_id;
	private int comem_id;
	private String comments;
	private String regdate;
	
	private String nick;
	
	
	
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public int getComem_id() {
		return comem_id;
	}
	public void setComem_id(int comem_id) {
		this.comem_id = comem_id;
	}
	public int getComments_id() {
		return comments_id;
	}
	public void setComments_id(int comments_id) {
		this.comments_id = comments_id;
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
