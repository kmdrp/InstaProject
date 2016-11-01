package com.alsta.model.domain;

public class Love {
	private int love_id;
	private int post_id;
	private int lomem_id;
	

	public int getLomem_id() {
		return lomem_id;
	}
	public void setLomem_id(int lomem_id) {
		this.lomem_id = lomem_id;
	}
	public int getLove_id() {
		return love_id;
	}
	public void setLove_id(int love_id) {
		this.love_id = love_id;
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}

}
