package com.alsta.model.service;

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
		/*for(int i=0;i<list.size();i++){
			Post post=(Post)list.get(i);
			List commentsList = (List)post.getCommentsList();
			for(int a=0;a<commentsList.size();a++){
				Comments comments = (Comments)commentsList.get(a);
				int comem_id = comments.getComem_id();
				
				String nick =memberDAO.select(comem_id);
				((Comments)commentsList.get(a)).setComments_id(nick);
			}
			((Post)list.get(i)).setCommentsList(commentsList);
			
		}*/
		return list;
	}

	public int regist(Comments comments) {
		commentsDAO.insert(comments);
		return 0;
	}
	
	public List selectList(){
		List list = postDAO.selectList();
		return list;
	}

	
	


}
