package com.test.testController;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.domain.BoardVo;
import com.test.service.BoardService;

@Controller
@RequestMapping("/*")
public class ProjectController {

	private static Logger logger = LoggerFactory.getLogger(ProjectController.class);

	@Autowired
	private BoardService service;

	// listAll
	@RequestMapping(value = "listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		logger.info("show all page......");
		model.addAttribute("listAll", service.listAll());
	}

	// register
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void registerGET() {
		logger.info("register get......");
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String registerPOST(BoardVo vo, String startDateVal, String endDateVal) {
		try{
			logger.info("register post......");
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date sd = sdf.parse(startDateVal);
			Date ed = sdf.parse(endDateVal);
			vo.setStartDate(sd);
			vo.setEndDate(ed);			
			logger.info(vo.toString());
			
			service.register(vo);
		}catch (Exception e){
			e.printStackTrace();
		}
		return "redirect:/listAll";
	}

	// read
	@RequestMapping(value = "read", method = RequestMethod.GET)
	public void readGET(int pNo, Model model) throws Exception {
		model.addAttribute("read", service.read(pNo));
	}

	// modify
	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public void modifyGET(int pNo, Model model) throws Exception {
		model.addAttribute("read", service.read(pNo));
	}

	@RequestMapping(value = "modify", method = RequestMethod.POST)
	public String modifyPOST(BoardVo vo, String startDateVal, String endDateVal) throws Exception {
		logger.info("modify post......");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date sd = sdf.parse(startDateVal);
		Date ed = sdf.parse(endDateVal);
		vo.setStartDate(sd);
		vo.setEndDate(ed);			
		logger.info(vo.toString());
		
		service.modify(vo);
		return "redirect:/listAll";
	}

	// remove
	@RequestMapping(value = "remove", method = RequestMethod.GET)
	public String remove(int pNo) throws Exception {
		service.remove(pNo);
		return "redirect:/listAll";
	}

}
