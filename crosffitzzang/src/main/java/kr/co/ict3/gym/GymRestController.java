package kr.co.ict3.gym;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/gymrest")
public class GymRestController {

	private static final Logger logger
	= LoggerFactory.getLogger(GymRestController.class);

	@Autowired
	private GymService service;
	
	@RequestMapping(value="/searchgym1", method=RequestMethod.GET)
	public List<GymDTO> searchGymPlace(String searchWord) {
		List<GymDTO> list4
				= service.searchGymPlace(searchWord);
		logger.info(list4.toString());
		return list4;
	}//searchGymPlace
	
	@RequestMapping(value="/selectGugun", method = RequestMethod.GET)
	public List<DongCodeDTO> selectGugun( String sidoCode) {
		
		List<DongCodeDTO> list = service.selectGugun(sidoCode);
		
		return list;
	}
	
	@RequestMapping(value="/jpListWithGugun"
			, method=RequestMethod.GET)
		public List<GymDTO> jpListWithGugun(DongCodeDTO inDto) {
			List<GymDTO> list = service.jpListWithGugun(inDto);
				return list;
}//jpListWithGugun
	
}
