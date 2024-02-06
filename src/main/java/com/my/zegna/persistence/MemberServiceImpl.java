package com.my.zegna.persistence;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.my.zegna.MemberVO;
import com.my.zegna.service.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void join(MemberVO vo) throws Exception {
		dao.join(vo);	
	}
	
	@Override
	public int selectId(String id) throws Exception {
		int cnt =dao.selectId(id);
		return cnt;
	}
	

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void logout(HttpSession session) throws Exception {
		session.invalidate();		
	}
	
	@Override
	public Map<String, Object> mypage(Map<String, Object> map) throws Exception {	
		return dao.selectMypage(map);	
	}
	
	
	 @Override public boolean edit(Map<String, Object> map) throws Exception { 
		 int affectRowCount = dao.update(map); return affectRowCount ==1; }
	 
	

}
