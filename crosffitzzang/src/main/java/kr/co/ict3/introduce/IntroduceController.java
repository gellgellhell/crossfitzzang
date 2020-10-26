package kr.co.ict3.introduce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IntroduceController {
	
	@RequestMapping(value = "introduce/introduce1", method = RequestMethod.GET)
	public String notice() {
		return "introduce/introduce1";
	}// notice

	@RequestMapping(value = "introduce/map", method = RequestMethod.GET)
	public String map() {
		return "introduce/map";
	}// map
}// class
