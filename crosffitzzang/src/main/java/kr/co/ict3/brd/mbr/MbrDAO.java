package kr.co.ict3.brd.mbr;

import java.util.List;

public interface MbrDAO {

	public List<MbrBoardDTO> listAll();

	public int write(MbrBoardDTO inDto);

	public MbrBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int delete(MbrBoardDTO inDto);

	public int chkPwd(MbrBoardDTO inDto);

	public int update(MbrBoardDTO inDto);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<MbrBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

	public void updateFilePath(MbrBoardDTO inDto);

}//class









