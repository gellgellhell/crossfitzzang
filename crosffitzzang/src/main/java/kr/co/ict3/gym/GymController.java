package kr.co.ict3.gym;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/gym")
public class GymController {
	
	@Autowired
	private GymService service;

	@RequestMapping(value="/recommend_gym", method=RequestMethod.GET)
	public String recommend_gym(Model model, GymDTO inDto) {
		
		List<GymDTO> list = service.recommend_gym(inDto);
		
		model.addAttribute("board_dto", inDto);
		model.addAttribute("board_list", list);
		
		return "gym/recommend_gym";

	} // recommend_gym
	
	@RequestMapping(value="/neargym", method=RequestMethod.GET)
	public String neargym(Model model ,String bno1) {
		
		GymDTO dto = service.neargym(bno1);
		List<DongCodeDTO> list = service.selectSido();
		
		model.addAttribute("board_dto1", dto);
		model.addAttribute("sidoList", list);
		
		return "gym/neargym";

	}//home
	
	@RequestMapping(value="/recommend_schedule", method=RequestMethod.GET)
	public String recommend_schedule(Model model, GymDTO inDto) {
		
		List<GymDTO> list2 = service.recommend_schedule(inDto);
				
		model.addAttribute("board_dto2", inDto);
		model.addAttribute("board_list2", list2);
		
		return "gym/recommend_schedule";

	}//recommend_schedule
	
	@RequestMapping(value="/realtime_schedule", method=RequestMethod.GET)
	public String realtime_schedule(Model model, GymDTO inDto) {
		
		List<GymDTO> list3 = service.realtime_schedule(inDto);
				
		model.addAttribute("board_dto3", inDto);
		model.addAttribute("board_list3", list3);
		
		return "gym/realtime_schedule";

	}//realtime_schedule
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String gym() {
		return "gym/view";
	}// view
	
}//class












