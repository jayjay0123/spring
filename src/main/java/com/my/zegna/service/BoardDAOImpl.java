package com.my.zegna.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.zegna.BoardVO;


@Repository
public class BoardDAOImpl implements BoardDAO {

	//mybatis
	@Inject
	private SqlSession sql;
	
	//mapper
	private static String namespace = "ph_board";

	//작성
	@Override
	public void write(BoardVO vo) throws Exception {
		 sql.insert(namespace+".write" , vo);
	}

	//조회
	@Override
	public BoardVO read(int seq) throws Exception {
		return sql.selectOne(namespace+".read", seq);
	}

	//수정
	@Override
	public void update(BoardVO vo) throws Exception {
		 sql.update(namespace+".update", vo);		
	}

	//삭제
	@Override
	public void delete(int seq) throws Exception {
		 sql.delete(namespace+".delete", seq);		
	}
	
	@Override
	public List<BoardVO> list() throws Exception {
		return sql.selectList(namespace +".list");
	}
	
	//조회수
	@Override
	public void hitUpdate(int seq) throws Exception {
		 sql.update(namespace+".hitUpdate", seq);		
	}
	
	
	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
	 return sql.selectOne(namespace + ".count"); 
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {

	 HashMap<String, Integer> data = new HashMap<String, Integer>();
	  
	 data.put("displayPost", displayPost);
	 data.put("postNum", postNum);
	  
	 return sql.selectList(namespace + ".listPage", data);
	}
	
	@Override
	public List<BoardVO> listPageSearch(int displayPost, int postNum, String keyword)
			throws Exception {
		HashMap <String, Object> data = new HashMap<String, Object>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		data.put("keyword", keyword);
		
		return sql.selectList(namespace +".listPageSearch", data);
	}
	
	//게시물 총개수 + 검색적용
	@Override
	public int searchCount(String keyword) throws Exception {
		HashMap<String, Object> data = new HashMap<String, Object>();
		
		//.put을 사용, 인자로 key와 value를 받아온다
		data.put("keyword", keyword);		
		
		return sql.selectOne(namespace +".searchCount", data);
	}

}
