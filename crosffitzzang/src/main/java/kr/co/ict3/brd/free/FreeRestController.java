package kr.co.ict3.brd.free;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/brdfree")
public class FreeRestController {

	private static final Logger logger
	= LoggerFactory.getLogger(FreeRestController.class);

	@Autowired
	private FreeService service;

	@RequestMapping(value="/list", method=RequestMethod.GET)
	public List<FreeBoardDTO> listAll() {

		List<FreeBoardDTO> list = service.listAll();

		return list;
	}//listAll

	@RequestMapping(value="", method=RequestMethod.POST)
	public int write(FreeBoardDTO inDto) {
		int writeCnt = service.write(inDto);
		return writeCnt;
	}//write

	@RequestMapping(value="/detail/{tbno}", method=RequestMethod.GET)
	public FreeBoardDTO detail(
						@PathVariable("tbno") String bno) {
		FreeBoardDTO dto = null;
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
	public int delete(@RequestBody FreeBoardDTO inDto) {
		int deleteCnt = service.delete(inDto);
		return deleteCnt;
	}//delete

	@RequestMapping(value="", method=RequestMethod.PUT)
	public int update(@RequestBody FreeBoardDTO inDto) {
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










