package kr.co.ict3.brd.event;

import java.util.List;

public interface EventDAO {

	public List<EventBoardDTO> listAll();

	public int write(EventBoardDTO inDto);

	public EventBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int delete(EventBoardDTO inDto);

	public int chkPwd(EventBoardDTO inDto);

	public int update(EventBoardDTO inDto);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<EventBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

	public void updateFilePath(EventBoardDTO inDto);

}//class









