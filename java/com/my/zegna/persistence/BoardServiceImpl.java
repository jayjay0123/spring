package com.my.zegna.persistence;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.zegna.BoardVO;
import com.my.zegna.service.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;

	@Override
	public void write(BoardVO vo) throws Exception {
		dao.write(vo);
	}

	@Override
	public BoardVO read(int seq) throws Exception {	
		return dao.read(seq);
	}
	
	//��ȸ��
	@Override
	public void hitUpdate(int seq) throws Exception {	
		dao.hitUpdate(seq);
	}
	

	@Override
	public void update(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int seq) throws Exception {
		dao.delete(seq);		
	}
	
	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}
	



/*
	//�Խù� ��� + ����¡ + �˻�
	@Override
	public List<BoardVO> listPageSearch(int displayPost, int postNum, String searchType, String keyword)
			throws Exception {
	
		return dao.listPageSearch(displayPost, postNum, searchType, keyword);
	}

	//�Խù� �� ����
	@Override
	public int searchCount(String searchType, String keyword) throws Exception {
		return dao.searchCount(searchType, keyword);
	}
	
	*/

	@Override
	public int count() throws Exception {
		return dao.count();
	}
	
	// �Խù� ��� + ����¡
	@Override
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {
	 return dao.listPage(displayPost, postNum);
	}
	

}
