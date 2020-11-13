package kr.co.ict3.brd.notice;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class NoticeController {

	private static final Logger logger
	= LoggerFactory.getLogger(NoticeController.class);

	@Autowired
	private NoticeService service;


	@RequestMapping(value="/board/list"
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
		List<NoticeBoardDTO> list = service.listSearch(inDto);

		model.addAttribute("search_dto", inDto);
		model.addAttribute("board_list", list);

		return "brd_notice/list";
	}//listSearch


	@RequestMapping(value="/notice/wform", method=RequestMethod.GET)
	public String wform() {
		return "brd_notice/wform";
	}//wform

	@RequestMapping(value="/notice/detail"
									, method=RequestMethod.GET)
	public String detail(String bno, Model model) {
		
		model.addAttribute("bno", bno);
		
		return "brd_notice/detail";
	}//detail

	@RequestMapping(value="/notice/uform"
									, method=RequestMethod.GET)
	public String uform(String bno, Model model) {
		model.addAttribute("bno", bno);
		return "brd_notice/uform";
	}//uform

}//class












