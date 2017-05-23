package com.test.persistence;

import java.util.List;

import com.test.domain.BoardVo;

public interface BoardDao {
	public List<BoardVo> listAll() throws Exception;

	public void create(BoardVo vo) throws Exception;

	public BoardVo read(int pNo) throws Exception;

	public void update(BoardVo vo) throws Exception;

	public void delete(int pNo) throws Exception;
	
}
