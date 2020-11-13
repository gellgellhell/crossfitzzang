package kr.co.ict3.brd.notice;

import java.util.List;

public interface NoticeDAO {

	public List<NoticeBoardDTO> listAll();

	public int write(NoticeBoardDTO inDto);

	public NoticeBoardDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int delete(NoticeBoardDTO inDto);

	public int chkPwd(NoticeBoardDTO inDto);

	public int update(NoticeBoardDTO inDto);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<NoticeBoardDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

	public void updateFilePath(NoticeBoardDTO inDto);

}//class









