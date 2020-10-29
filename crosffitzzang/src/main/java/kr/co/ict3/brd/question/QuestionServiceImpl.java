package kr.co.ict3.brd.question;

import java.util.List;

import javax.print.DocFlavor.READER;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	private QuestionDAO dao;

	@Override
	public List<QuestionDTO> listAll() {
		List<QuestionDTO> list = dao.listAll();
		return list;
	}//listAll

	@Override
	public QuestionDTO detail(String bno) {
		QuestionDTO dto = null;
		dto = dao.detail(bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		int updateCnt = dao.likeCnt(bno, heart);
		return updateCnt;
	}//likeCnt


	@Override
	public int insHanjul(ReplyDTO inDto) {
		int successCnt = dao.insHanjul( inDto );
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list = dao.viewHanjul( bno );
		return list;
	}//viewHanjul

	@Override
	public List<QuestionDTO> listSearch(SearchDTO inDto) {
		List<QuestionDTO> list = dao.listSearch(inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt = dao.totlistCnt(inDto);
		return totlistCnt;
	}//totlistCnt

}//class











