package kr.co.ict3.fdetail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FdetailController {
	
	

	@RequestMapping(value = "/fdetail1", method = RequestMethod.GET)
	public String fdtail1() {
		
		return "/footer_detail/fdetail1";
		
	}//fdtail1
	
	@RequestMapping(value = "/fdetail2", method = RequestMethod.GET)
	public String fdtail2() {
		
		return "/footer_detail/fdetail2";
		
	}//fdtail2
	
	@RequestMapping(value = "/fdetail3", method = RequestMethod.GET)
	public String fdtail3() {
		
		return "/footer_detail/fdetail3";
		
	}//fdtail3

	
}//class
