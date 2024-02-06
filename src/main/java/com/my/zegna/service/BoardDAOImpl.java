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

	//�ۼ�
	@Override
	public void write(BoardVO vo) throws Exception {
		 sql.insert(namespace+".write" , vo);
	}

	//��ȸ
	@Override
	public BoardVO read(int seq) throws Exception {
		return sql.selectOne(namespace+".read", seq);
	}

	//����
	@Override
	public void update(BoardVO vo) throws Exception {
		 sql.update(namespace+".update", vo);		
	}

	//����
	@Override
	public void delete(int seq) throws Exception {
		 sql.delete(namespace+".delete", seq);		
	}
	
	@Override
	public List<BoardVO> list() throws Exception {
		return sql.selectList(namespace +".list");
	}
	
	//��ȸ��
	@Override
	public void hitUpdate(int seq) throws Exception {
		 sql.update(namespace+".hitUpdate", seq);		
	}
	
	
	// �Խù� �� ����
	@Override
	public int count() throws Exception {
	 return sql.selectOne(namespace + ".count"); 
	}
	
	// �Խù� ��� + ����¡
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
	
	//�Խù� �Ѱ��� + �˻�����
	@Override
	public int searchCount(String keyword) throws Exception {
		HashMap<String, Object> data = new HashMap<String, Object>();
		
		//.put�� ���, ���ڷ� key�� value�� �޾ƿ´�
		data.put("keyword", keyword);		
		
		return sql.selectOne(namespace +".searchCount", data);
	}

}
