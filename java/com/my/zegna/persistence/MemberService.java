package com.my.zegna.persistence;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.my.zegna.MemberVO;

public interface MemberService {

	//회원가입
	public void join(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	//로그아웃
	public void logout(HttpSession session) throws Exception;

	Map<String, Object> mypage(Map<String, Object> map) throws Exception;

	boolean edit(Map<String, Object> map) throws Exception;

	int selectId(String id) throws Exception;



	
}
