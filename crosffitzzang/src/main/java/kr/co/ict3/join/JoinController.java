package kr.co.ict3.join;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@RequestMapping(value="/join")
public class JoinController {

	private static final Logger logger
	= LoggerFactory.getLogger(JoinController.class);

	@Autowired
	private JoinService service;

	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String form() {
		return "join/register";
	}//register

	@ResponseBody
	@RequestMapping(value="/idchk", method=RequestMethod.GET)
	public String idCheck(String id) {
		int idCount = service.idCheck(id);
		return ""+ idCount;
	}//idCheck

	@ResponseBody
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String formSubmit(MbrDTO inDto) {
		logger.info(inDto.getName());
		int insertCnt = service.formSubmit(inDto);
		logger.info(""+insertCnt);
		return ""+insertCnt;
	}//formSubmit
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mpform() {
		
		return "join/mypage";
	}//mypage
	
	@RequestMapping(value = "/updatembrview", method = RequestMethod.GET)
	public String updatembrview() {
		return "/join/updatembrview";
	}// updatembrview
	
	@RequestMapping(value = "/updatembinfo", method = RequestMethod.GET)
	public String updatembrinfo(MbrDTO inDto, HttpSession session) {
		
		service.updatembrinfo(inDto);
		
		session.invalidate();
		
		return "redirect:/";
	}// updatembrinfo

}//class






