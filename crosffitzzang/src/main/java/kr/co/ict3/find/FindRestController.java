package kr.co.ict3.find;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.ict3.join.MbrDTO;

@RestController
public class FindRestController {

	private static final Logger logger = LoggerFactory.getLogger(FindRestController.class);

	@Autowired
	private FindService service;

	@RequestMapping(value = "/id_find", method = RequestMethod.POST)
	public String idFind(MbrDTO inDto, HttpSession session) {
		logger.info(inDto.getName());
		logger.info(inDto.getEmail());
		String id = service.idFind(inDto);
		logger.info(id);
		return id;
	}//idFind
	
	@RequestMapping(value = "/pwd_find", method = RequestMethod.POST)
	public String pwdFind(MbrDTO inDto, HttpSession session) {
		logger.info(inDto.getId());
		logger.info(inDto.getName());
		logger.info(inDto.getEmail());
		String pwd = service.pwdFind(inDto);
		logger.info(pwd);
		return pwd;
	}//pwdFind
	
}//class
