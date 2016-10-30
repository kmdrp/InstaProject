package com.alsta.model.service;

import java.util.List;

import com.alsta.model.domain.Follow;
import com.alsta.model.domain.Member;

public interface ProfileService {
	
	public List selectMy(int member_id);
	public Member selectOne(int member_id);
	public List followMe(int member_id);
	public List followByMe(int member_id);
	

}