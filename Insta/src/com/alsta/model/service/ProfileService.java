package com.alsta.model.service;

import java.util.List;

import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Member;
import com.alsta.model.domain.Post;

public interface ProfileService {
	public List selectMy(int member_id);
	public Member selectOne(int member_id);
	public List followMe(int member_id);
	public List followByMe(int pomem_id);
	//public Member updateProfileImg(Member member);
	
	//img Click��  img, pomem_id�� profile_img,�г���, post_regdate,content,love,comments,
	
	
}
