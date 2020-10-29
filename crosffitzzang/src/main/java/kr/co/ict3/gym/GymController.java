package kr.co.ict3.gym;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/gym")
public class GymController {
	
	@RequestMapping(value = "/neargym", method = RequestMethod.GET)
	public String neargym() {
		return "gym/neargym";
	}// neargym
	
	@RequestMapping(value = "/recommend_gym", method = RequestMethod.GET)
	public String recommend_gym() {
		return "gym/recommend_gym";
	}// recommend_gym
	
	@RequestMapping(value = "/recommend_schedule", method = RequestMethod.GET)
	public String recommend_schedule() {
		return "gym/recommend_schedule";
	}// recommend_schedule
	
	@RequestMapping(value = "/realtime_schedule", method = RequestMethod.GET)
	public String realtime_schedule() {
		return "gym/realtime_schedule";
	}// realtime_schedule
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String gym() {
		return "gym/view";
	}// view
	
}//class












