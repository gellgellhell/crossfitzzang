package kr.co.ict3.join;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/join")
public class JoinController {
	
	private static final Logger logger
		= LoggerFactory.getLogger(JoinController.class);

	@Autowired
	private JoinService service;

	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String form() {
		return "join/form";
	}//form

	@RequestMapping(value="/form2", method=RequestMethod.GET)
	public String form2() {
		return "join/form2";
	}//form2

	@ResponseBody
	@RequestMapping(value="/idchk", method=RequestMethod.GET)
	public String idCheck(String id) {
		int idCount = service.idCheck(id);
		return ""+idCount;
	}//idCheck

	@ResponseBody
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String formSubmit(MbrDTO inDto) {
		logger.info(inDto.getBiz_yn());
		logger.info(inDto.getBiz_boss_nm());
		logger.info(inDto.getBiz_place_nm());
		logger.info(inDto.getBiz_reg_no());
		int insertCnt = service.formSubmit(inDto);
		return ""+insertCnt;
	}//formSubmit

}//class






