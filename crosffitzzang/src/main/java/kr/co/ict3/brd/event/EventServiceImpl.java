package kr.co.ict3.brd.event;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDAO dao;

	@Override
	public List<EventBoardDTO> listAll() {
		List<EventBoardDTO> list = dao.listAll();
		return list;
	}//listAll

	@Override
	public EventBoardDTO detail(String bno) {
		EventBoardDTO dto = null;
		dto = dao.detail(bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		int updateCnt = dao.likeCnt(bno, heart);
		return updateCnt;
	}//likeCnt


	@Override
	public int insHanjul(ReplyDTO inDto) {
		int successCnt = dao.insHanjul( inDto );
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list = dao.viewHanjul( bno );
		return list;
	}//viewHanjul

	@Override
	public List<EventBoardDTO> listSearch(SearchDTO inDto) {
		List<EventBoardDTO> list = dao.listSearch(inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt = dao.totlistCnt(inDto);
		return totlistCnt;
	}//totlistCnt

}//class











