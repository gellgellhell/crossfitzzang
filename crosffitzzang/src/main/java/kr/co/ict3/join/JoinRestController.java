package kr.co.ict3.join;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/inout")
public class JoinRestController {

	@Autowired
	private JoinService service;

	@RequestMapping(value="/in", method=RequestMethod.GET)
	public int login(MbrDTO inDto, HttpSession session) {
		int mbrNo = service.login(inDto);
		if(mbrNo > 0) {
			inDto.setMno(""+mbrNo);
			session.setAttribute("login_dto", inDto);
		}
		return mbrNo;
	}//login

	@RequestMapping(value="/out", method=RequestMethod.GET)
	public int logout(HttpSession session) {
		session.invalidate();
		return 1;
	}//logout

}//class
