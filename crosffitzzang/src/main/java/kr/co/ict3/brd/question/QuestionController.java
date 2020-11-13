package kr.co.ict3.brd.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "brd_question")
public class QuestionController {

	@Autowired
	private QuestionService service;

	@RequestMapping(value="/list_rest2", method=RequestMethod.GET)
	public String listRest2() {
		return "brd_question/list_rest2";
	}//listRest2

	@RequestMapping(value="/list_rest", method=RequestMethod.GET)
	public String listRest() {
		return "brd_question/list_rest";
	}//listRest

	@RequestMapping(value="/list_search", method=RequestMethod.GET)
	public String listSearch(Model model, SearchDTO inDto, String reqPage) {
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
		List<QuestionDTO> list = service.listSearch(inDto);

		model.addAttribute("search_dto", inDto);
		model.addAttribute("board_list", list);

		return "brd_question/list_search";
	}//listSearch

	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(String bno, Model model) {
		model.addAttribute("bno", bno);
		return "brd_question/detail";
	}//detail
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list() {
		return "brd_question/list";
	}//list


	@RequestMapping(value = "/qdetail1", method = RequestMethod.GET)
	public String qdtail1() {
		
		return "/brd_question/qdetail1";
		
	}//qdtail1
	
	@RequestMapping(value = "/qdetail2", method = RequestMethod.GET)
	public String qdtail2() {
		
		return "/brd_question/qdetail2";
		
	}//qdtail2
	
	@RequestMapping(value = "/qdetail3", method = RequestMethod.GET)
	public String qdtail3() {
		
		return "/brd_question/qdetail3";
		
	}//qdtail3
	
	@RequestMapping(value = "/qdetail4", method = RequestMethod.GET)
	public String qdtail4() {
		
		return "/brd_question/qdetail4";
		
	}//qdtail4
	
	@RequestMapping(value = "/qdetail5", method = RequestMethod.GET)
	public String qdtail5() {
		
		return "/brd_question/qdetail5";
		
	}//qdtail5
	
	@RequestMapping(value = "/qdetail6", method = RequestMethod.GET)
	public String qdtail6() {
		
		return "/brd_question/qdetail6";
		
	}//qdtail6




}//class












