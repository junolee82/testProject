package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.BoardVo;
import com.test.persistence.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao dao;

	@Override
	public List<BoardVo> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public void register(BoardVo vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public BoardVo read(int pNo) throws Exception {
		return dao.read(pNo);
	}

	@Override
	public void modify(BoardVo vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(int pNo) throws Exception {
		dao.delete(pNo);
	}

}
