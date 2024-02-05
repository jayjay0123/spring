package com.my.zegna.persistence;

import java.util.List;

import com.my.zegna.BoardVO;

public interface BoardService {

	void write(BoardVO vo) throws Exception;

	BoardVO read(int seq) throws Exception;

	void update(BoardVO vo) throws Exception;

	void delete(int seq) throws Exception;

	List<BoardVO> list() throws Exception;
	
	// �Խù� �� ����
	public int count() throws Exception;
	
	// �Խù� ��� + ����¡
	List<BoardVO> listPage(int displayPost, int postNum) throws Exception;

	void hitUpdate(int seq) throws Exception;


}
