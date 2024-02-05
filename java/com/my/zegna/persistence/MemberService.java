package com.my.zegna.persistence;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.my.zegna.MemberVO;

public interface MemberService {

	//ȸ������
	public void join(MemberVO vo) throws Exception;
	
	//�α���
	public MemberVO login(MemberVO vo) throws Exception;
	
	//�α׾ƿ�
	public void logout(HttpSession session) throws Exception;

	Map<String, Object> mypage(Map<String, Object> map) throws Exception;

	boolean edit(Map<String, Object> map) throws Exception;

	int selectId(String id) throws Exception;



	
}
