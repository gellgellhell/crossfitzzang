package kr.co.ict3.brd.qna;

import java.util.List;

public interface QAService {

	public List<QADTO> listAll();

	public QADTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<QADTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

}//class









