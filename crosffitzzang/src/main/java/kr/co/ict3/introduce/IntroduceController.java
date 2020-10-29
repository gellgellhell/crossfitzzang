package kr.co.ict3.introduce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/introduce")
public class IntroduceController {
	
	@RequestMapping(value = "/crossfit", method = RequestMethod.GET)
	public String crossfit() {
		return "introduce/crossfit";
	}// crossfit
	
	@RequestMapping(value = "/introduce", method = RequestMethod.GET)
	public String introduce() {
		return "introduce/introduce";
	}// introduce

	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map() {
		return "introduce/map";
	}// map
}// class
