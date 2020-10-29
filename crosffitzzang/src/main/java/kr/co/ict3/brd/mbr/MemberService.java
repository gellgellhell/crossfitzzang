package kr.co.ict3.brd.mbr;

import java.util.List;

public interface MemberService {

	public List<MemberBoardDTO> listAll();

	public int write(MemberBoardDTO inDto);

	public MemberBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int delete(MemberBoardDTO inDto);

	public int update(MemberBoardDTO inDto);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<MemberBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

}//class









