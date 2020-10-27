package kr.co.ict3.memberboard;

import java.util.List;

public interface MBService {

	public void updateLikeCnt(String bno);

	public int update(BoardDTO inDto);

	public int delete(String bno, String loginId);

	public BoardDTO detail(String bno);

	public int write(BoardDTO inDto);

	public List<BoardDTO> list();

}//class
