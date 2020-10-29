package kr.co.ict3.brd.question;

import java.util.List;

public interface QuestionService {

	public List<QuestionDTO> listAll();

	public QuestionDTO detail(String bno);

	public int likeCnt(String bno, String heart);

	public int insHanjul(ReplyDTO inDto);

	public List<ReplyDTO> viewHanjul(String bno);

	public List<QuestionDTO> listSearch(SearchDTO inDto);

	public int totlistCnt(SearchDTO inDto);

}//class









