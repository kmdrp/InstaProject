package com.alsta.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alsta.model.dao.CommentsDAO;
import com.alsta.model.dao.LoveDAO;
import com.alsta.model.dao.PostDAO;
import com.alsta.model.domain.Comments;
import com.alsta.model.domain.Post;
@Service
public class MainPageServiceImpl implements MainPageService{
	@Autowired
	@Qualifier("postDAOMybatis")
	private PostDAO postDAO;
	
	@Autowired
	@Qualifier("commentsDAOMybatis")
	private CommentsDAO commentsDAO;
	
	@Autowired
	private LoveDAO loveDAO;
	
	public List selectAll() {
		List list = (List)postDAO.selectAll();
		
		return list;
	}
	
	public List selectList(int member_id){
		List list = postDAO.selectList(member_id);
		List commentsList = commentsDAO.selectAll();
		System.out.println("mainpagesevice ¥Ò±€ ªÁ¿Ã¡Ó"+commentsList.size());
		for(int i=0;i<list.size();i++){
			Post post=(Post)list.get(i);
			List <Comments> cummentsSerchList = new ArrayList<Comments>();
			int count=0;
			List loveList=loveDAO.selectList(post.getPost_id());
			post.setLoveListSize(loveList.size());
			for(int a=0;a<commentsList.size();a++){
				Comments comments = (Comments)commentsList.get(a);
				
				if(comments.getPost_id()==post.getPost_id()){
					if(count<4){
						cummentsSerchList.add(comments);
					}
					count++;
				}
			}
			post.setCommentsListSize(count);
			post.setCommentsList((ArrayList)cummentsSerchList);
			
			
			
		}
		return list;
	}
	public List searchList(String data){
		List list = postDAO.searchList(data);
		List commentsList = commentsDAO.selectAll();
		System.out.println("mainpagesevice ¥Ò±€ ªÁ¿Ã¡Ó"+commentsList.size());
		for(int i=0;i<list.size();i++){
			Post post=(Post)list.get(i);
			List <Comments> cummentsSerchList = new ArrayList<Comments>();
			int count=0;
			List loveList=loveDAO.selectList(post.getPost_id());
			post.setLoveListSize(loveList.size());
			for(int a=0;a<commentsList.size();a++){
				Comments comments = (Comments)commentsList.get(a);
				
				if(comments.getPost_id()==post.getPost_id()){
					if(count<4){
						cummentsSerchList.add(comments);
					}
					count++;
				}
			}
			post.setCommentsListSize(count);
			post.setCommentsList((ArrayList)cummentsSerchList);
			
			
			
		}
		return list;
	}
	
	public int regist(Comments comments) {
		commentsDAO.insert(comments);
		return 0;
	}
	
	public List selectOne(int post_id){
		List list = commentsDAO.selectOne(post_id);
		return list;
	}
}
