package com.alsta.model.domain;


import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;


public class Post {
	private int post_id;
	private int pomem_id;
	private String img_type;
	private String gps;
	private String path;
	private String regdate;
	private String content;
	private MultipartFile myFile;

	ArrayList<Comments> commentsList;
	ArrayList<Member> memberList;
	
	
	public int getPomem_id() {
		return pomem_id;
	}
	public void setPomem_id(int pomem_id) {
		this.pomem_id = pomem_id;
	}
	public ArrayList<Member> getMemberList() {
		return memberList;
	}
	public void setMemberList(ArrayList<Member> memberList) {
		this.memberList = memberList;
	}
	public ArrayList<Comments> getCommentsList() {
		return commentsList;
	}
	public void setCommentsList(ArrayList<Comments> commentsList) {
		this.commentsList = commentsList;
	}

	public MultipartFile getMyFile() {
		return myFile;
	}
	public void setMyFile(MultipartFile myFile) {
		this.myFile = myFile;

	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	
	public String getImg_type() {
		return img_type;
	}
	public void setImg_type(String img_type) {
		this.img_type = img_type;
	}
	public String getGps() {
		return gps;
	}
	public void setGps(String gps) {
		this.gps = gps;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
