package kr.co.ict3.memberboard;

import java.util.List;

public interface BoardDAO {

	public void updateLikeCnt(String bno);

	public int update(BoardDTO inDto);

	public void updateViewCnt(String bno);

	public int delete(String bno);

	public BoardDTO detail(String bno);

	public int write(BoardDTO inDto);

	public List<BoardDTO> list();

}//class
