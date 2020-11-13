package kr.co.ict3.brd.m2m;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.ict3.util.SessionCheck;


@Controller
public class MMController {

	private static final Logger logger
	= LoggerFactory.getLogger(MMController.class);

	@Autowired
	private MMService service;


	@RequestMapping(value="/m2m/list"
								, method=RequestMethod.GET)
	public String listSearch(Model model
						, SearchDTO inDto, String reqPage) {
		if(reqPage == null || reqPage.equals("")) {
			reqPage = "1";
		}

		int beginPage = 1, endPage = 10;
		if(reqPage.length() >= 2) {
			String reqPageFront
			= reqPage.substring(0, reqPage.length() - 1);
			beginPage = Integer.parseInt(reqPageFront+"1");
			endPage = (Integer.parseInt(reqPageFront) +1) * 10;

			String reqPageEnd = reqPage.substring(
					reqPage.length()-1, reqPage.length());
			if(reqPageEnd.equals("0")) {
				beginPage = beginPage - 10;
				endPage = endPage - 10;
			}//if
		}//if
		model.addAttribute("beginPage", beginPage);
		model.addAttribute("endPage", endPage);

		//totlistCnt, maxPage start
		int totlistCnt = service.totlistCnt(inDto);
		int maxPage = totlistCnt / 10;
		if(totlistCnt % 10 > 0) {
			maxPage++;//maxPage = maxPage + 1;
		}
		model.addAttribute("maxPage", maxPage);
		//totlistCnt, maxPage end
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		model.addAttribute("endPage", endPage);

		inDto.setSearch_page_num(
				(Integer.parseInt(reqPage) - 1) * 10 );
		List<MMDTO> list = service.listSearch(inDto);

		model.addAttribute("search_dto", inDto);
		model.addAttribute("board_list", list);

		return "brd_m2m/list";
	}//listSearch


	@RequestMapping(value="/m2m/wform", method=RequestMethod.GET)
	public String wform(HttpSession session) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}
		return "brd_m2m/wform";
	}//wform

	@RequestMapping(value="/m2m/detail"
									, method=RequestMethod.GET)
	public String detail(String bno, Model model, HttpSession session) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}
		model.addAttribute("bno", bno);
		
		return "brd_m2m/detail";
	}//detail

	@RequestMapping(value="/m2m/uform"
									, method=RequestMethod.GET)
	public String uform(String bno, Model model) {
		model.addAttribute("bno", bno);
		return "brd_m2m/uform";
	}//uform

}//class














