package com.my.zegna.service;

import java.util.List;

import com.my.zegna.BoardVO;

public interface BoardDAO {

	void write(BoardVO vo) throws Exception;

	BoardVO read(int seq) throws Exception;

	void update(BoardVO vo) throws Exception;

	void delete(int seq) throws Exception;

	List<BoardVO> list() throws Exception;

	//게시물 총 개수
	public int count() throws Exception;

	// 게시물 목록 + 페이징
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;

	void hitUpdate(int seq) throws Exception;

	List<BoardVO> listPageSearch(int displayPost, int postNum, String keyword) throws Exception;

	int searchCount(String keyword) throws Exception;
}
