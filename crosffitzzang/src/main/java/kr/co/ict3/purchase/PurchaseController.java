package kr.co.ict3.purchase;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/purchase")
public class PurchaseController {

	@RequestMapping(value = "/bag", method = RequestMethod.GET)
	private String bag() {
		
		return "/purchase/bag";

	}// bag
	
	@RequestMapping(value = "/charge", method = RequestMethod.GET)
	private String charge() {
		
		return "/purchase/charge";
		
	}// charge
	
	
}// class
