package com.my.zegna.service;

import java.util.Map;

import com.my.zegna.MemberVO;

public interface MemberDAO {
	
	//회원가입
	public void join(MemberVO vo) throws Exception;

	public MemberVO login(MemberVO vo) throws Exception;

	Map<String, Object> selectMypage(Map<String, Object> map) throws Exception;

	int update(Map<String, Object> map) throws Exception;

	int selectId(String id) throws Exception;	
	
	

}
