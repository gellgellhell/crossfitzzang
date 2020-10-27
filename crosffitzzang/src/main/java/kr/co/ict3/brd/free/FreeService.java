package kr.co.ict3.brd.free;

import java.util.List;

public interface FreeService {

	public List<FreeBoardDTO> listAll();

	public int write(FreeBoardDTO inDto);

	public FreeBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int delete(FreeBoardDTO inDto);

	public int update(FreeBoardDTO inDto);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<FreeBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

}//class









