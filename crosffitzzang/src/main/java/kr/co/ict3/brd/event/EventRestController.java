package kr.co.ict3.brd.event;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping(value ="/brdevent")
public class EventRestController {

	private static final Logger logger
	= LoggerFactory.getLogger(EventRestController.class);

	@Autowired
	private EventService service;

	@RequestMapping(value="list"
								, method=RequestMethod.GET)
	public HashMap<String, Object> listSearch(
			SearchDTO inDto, PageDTO pgDto) {
		//start - reqPage
		String reqPage = pgDto.getReqPage();
		if(reqPage == null
				|| reqPage.equals("")) reqPage = "1";
		//end - reqPage

		//start - totlistCnt, maxPage
		int totlistCnt = service.totlistCnt(inDto);
		int maxPage = totlistCnt / 10;
		if(totlistCnt % 10 > 0) maxPage++;
		pgDto.setMaxPage(""+maxPage);
		//end - totlistCnt, maxPage
		
		//start - beginPage, endPage
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
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		pgDto.setBeginPage(""+beginPage);
		pgDto.setEndPage(""+endPage);
		//end - beginPage, endPage

		//start - list
		inDto.setSearch_page_num(
				(Integer.parseInt(reqPage) - 1) * 10 );
		List<EventBoardDTO> list = service.listSearch(inDto);
		//end - list

		HashMap<String, Object> map
			= new HashMap<String, Object>();
		map.put("page_dto", pgDto);
		map.put("search_dto", inDto);
		map.put("board_list", list);
		return map;

	}//list

	@RequestMapping(value="", method=RequestMethod.POST)
	public int write(EventBoardDTO inDto) {
		int writeCnt = service.write(inDto);
		return writeCnt;
	}//write

	@RequestMapping(value="/detail/{tbno}", method=RequestMethod.GET)
	public EventBoardDTO detail(
						@PathVariable("tbno") String bno) {
		EventBoardDTO dto = null;
		dto = service.detail(bno);
		return dto;
	}//detail

	@RequestMapping(value="/{bno}/{heart}"
									, method=RequestMethod.PUT)
	public int likeCnt(
			@PathVariable("bno") String bno
			, @PathVariable("heart") String heart ) {
		int updateCnt = 0;
		updateCnt = service.likeCnt(bno, heart);
		return updateCnt;
	}//likeCnt

	@RequestMapping(value="", method=RequestMethod.DELETE)
	public int delete(@RequestBody EventBoardDTO inDto) {

		EventBoardDTO dto = service.detail(inDto.getBno());

		int deleteCnt = service.delete(inDto);

		return deleteCnt;
	}//delete
	
	

	@RequestMapping(value="", method=RequestMethod.PUT)
	public int update(@RequestBody EventBoardDTO inDto) {
		int updateCnt = service.update(inDto);
		logger.info(""+updateCnt);
		return updateCnt;
	}//update

	@RequestMapping(value = "/insHanjul"
					, method = RequestMethod.POST)
	public String insHanjul( ReplyDTO inDto ) {
		logger.info("insHanjul");
		int successCnt = service.insHanjul( inDto );

		return "" + successCnt;
	}//insHanjul

	@RequestMapping(value = "viewHanjul"
					, method = RequestMethod.GET)
	public List<ReplyDTO> viewHanjul( String bno ) {

		List<ReplyDTO> list = service.viewHanjul( bno );

		return list;

	}//viewHanjul

}//class










