package kr.co.ict3.find;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FindController {
	

	
	@RequestMapping(value = "/id_find_form", method = RequestMethod.GET)
	public String idFindForm() {
		
		return "/find/id_find_form";
		
	}//idFind
		
		@RequestMapping(value = "/pwd_find_form", method = RequestMethod.GET)
		public String pwdFindForm() {
			
			return "/find/pwd_find_form";
		
	}//pwdFindForm
	
}//class
