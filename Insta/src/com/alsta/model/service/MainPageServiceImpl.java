package com.alsta.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alsta.model.dao.CommentsDAO;
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
	
	public List selectAll() {
		List list = (List)postDAO.selectAll();
		
		return list;
	}

	public int regist(Comments comments) {
		commentsDAO.insert(comments);
		return 0;
	}
	
	public List selectList(int member_id){
		List list = postDAO.selectList(member_id);
		List commentsList = commentsDAO.selectAll();
		System.out.println("mainpagesevice ¥Ò±€ ªÁ¿Ã¡Ó"+commentsList.size());
		for(int i=0;i<list.size();i++){
			Post post=(Post)list.get(i);
			List <Comments> cummentsSerchList = new ArrayList<Comments>();
			for(int a=0;a<commentsList.size();a++){
				Comments comments = (Comments)commentsList.get(a);
				
				if(comments.getPost_id()==post.getPost_id()){
					
					cummentsSerchList.add(comments);
					
					post.setCommentsList((ArrayList)cummentsSerchList);
				}
			}
		}
		return list;
	}

	
	


}
