package kr.co.ict3.brd.event;

import java.util.List;

public interface EventService {

	public List<EventBoardDTO> listAll();

	public EventBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<EventBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

}//class









