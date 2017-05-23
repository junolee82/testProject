package com.test.testController;

import java.text.SimpleDateFormat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.domain.BoardVo;
import com.test.persistence.BoardDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class BoardDaoTest {

	@Autowired
	private BoardDao boardDao;

	private static Logger logger = LoggerFactory.getLogger(BoardDaoTest.class);

	/*@Test
	public void ListAllTest() throws Exception {
		logger.info(boardDao.listAll().toString());
	}

	@Test
	public void readTest() throws Exception {
		logger.info(boardDao.read(16).toString());
	}*/

	/*@Test
	public void insertTest() throws Exception {
		BoardVo vo = new BoardVo();
		vo.setpName("testgg");
		vo.setpContent("this test gg");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String startDate = "2017-05-22";
		String endDate = "2017-05-28";
		vo.setStartDate(dateFormat.parse(startDate));
		vo.setEndDate(dateFormat.parse(endDate));
		vo.setpState("진행중");
		boardDao.create(vo);
	}*/

	/*@Test
	public void updateTest() throws Exception {
		BoardVo vo = new BoardVo();
		vo.setpNo(17);
		vo.setpName("testgg update");
		vo.setpContent("this test gg update");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String startDate = "2017-05-23";
		String endDate = "2017-05-26";
		vo.setStartDate(dateFormat.parse(startDate));
		vo.setEndDate(dateFormat.parse(endDate));
		vo.setpState("준비");
		boardDao.update(vo);
	}*/
	
	/*@Test
	public void deleteTest() throws Exception {
		boardDao.delete(2);
	}*/

}
