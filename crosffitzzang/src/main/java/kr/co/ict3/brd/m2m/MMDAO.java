package kr.co.ict3.brd.m2m;

import java.util.List;

public interface MMDAO {

	public List<MMDTO> listAll();

	public MMDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<MMDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

	public int chkPwd(MMDTO inDto);

	public int update(MMDTO inDto);

	public int write(MMDTO inDto);

	public int delete(MMDTO inDto);

}//class









