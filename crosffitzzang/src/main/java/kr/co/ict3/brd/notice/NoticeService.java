package kr.co.ict3.brd.notice;

import java.util.List;

public interface NoticeService {

	public List<NoticeBoardDTO> listAll();

	public NoticeBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<NoticeBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

}//class









