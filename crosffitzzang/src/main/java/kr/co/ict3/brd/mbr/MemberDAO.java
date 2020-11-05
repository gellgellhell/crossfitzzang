package kr.co.ict3.brd.mbr;

import java.util.List;

public interface MemberDAO {

	public List<MemberBoardDTO> listAll();

	public MemberBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<MemberBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

}//class









