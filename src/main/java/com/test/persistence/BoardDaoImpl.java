package com.test.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.domain.BoardVo;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private SqlSession session;

	private static String namespace = "com.test.mappers.BoardMapper";

	@Override
	public List<BoardVo> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public void create(BoardVo vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public BoardVo read(int pNo) throws Exception {
		return session.selectOne(namespace + ".read", pNo);
	}

	@Override
	public void update(BoardVo vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int pNo) throws Exception {
		session.delete(namespace + ".delete", pNo);
	}

}
