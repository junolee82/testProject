package com.test.service;

import java.util.List;

import com.test.domain.BoardVo;

public interface BoardService {
	public List<BoardVo> listAll() throws Exception;
	
	public void register(BoardVo vo) throws Exception;
	
	public BoardVo read(int pNo) throws Exception;
	
	public void modify(BoardVo vo) throws Exception;
	
	public void remove(int pNo) throws Exception;
	
}
