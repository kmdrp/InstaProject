package com.alsta.model.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.alsta.model.dao.FollowDAO;
import com.alsta.model.dao.MemberDAO;
import com.alsta.model.dao.PostDAO;
import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Member;
import com.alsta.model.domain.Post;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	@Qualifier("memberDAOMybatis")
	private MemberDAO memberDAO; 
	
	@Autowired
	@Qualifier("followDAOMybatis")
	private FollowDAO followDAO; 
	
	@Autowired
	@Qualifier("postDAOMybatis")
	private PostDAO postDAO;
	
	@Transactional(propagation=Propagation.REQUIRED)
	public int regist(Member member) {
		int result=0;
		memberDAO.insert(member);
		int member_id=member.getMember_id();
		Follow follow=new Follow();
		follow.setMe(member_id);
		follow.setYou(member_id);
		result=followDAO.insert(follow);
		return result;
	}
	public int updateDetail(Member member) {
		return memberDAO.updateDetail(member);
	}
	public int updatePassword(Member member) {
		return memberDAO.updatePassword(member);
	}
	public Member selectOne(int member_id) {
		return memberDAO.selectOne(member_id);
	}
	public int registPost(Post post,HttpServletRequest request) {
		MultipartFile myFile=post.getMyFile();
		String fileName=myFile.getOriginalFilename(); //업로드한 파일명...
		ServletContext application=request.getServletContext();
		String path=application.getRealPath("/images/post/")+fileName;
		System.out.println(path);
		try {
			myFile.transferTo(new File(path));
			post.setPath(fileName);
			post.setImg_type("true");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return postDAO.insert(post);
	}
	public List logIn(Member dto) {
		List list=memberDAO.selectList(dto);
		return list;
	}

}
