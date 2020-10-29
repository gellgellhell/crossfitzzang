package kr.co.ict3.gym;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/gym")
public class GymController {
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String gym() {
		return "gym/view";
	}// notice
	
}//class












