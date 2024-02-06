package com.my.zegna.service;


import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.zegna.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession sql;
	
	private static String namespace = "tbl_member";
	
	@Override
	public void join(MemberVO vo) throws Exception {
		sql.insert(namespace +".join", vo);		
	}
	
	//중복체크
	@Override
	public int selectId(String id) throws Exception {
		int cnt = sql.selectOne(namespace +".selectId", id);
		return cnt; 
	}
	
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne(namespace +".login", vo);		 
	}

	@Override
	public Map<String, Object> selectMypage(Map<String, Object> map) throws Exception {
		return sql.selectOne(namespace +".mypage", map);
		
	}	

	 @Override
	 public int update(Map<String, Object> map) throws Exception {
		 return sql.update(namespace +".update", map); 
	}

}
