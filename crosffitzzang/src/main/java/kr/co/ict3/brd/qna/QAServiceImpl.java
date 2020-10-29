package kr.co.ict3.brd.qna;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QAServiceImpl implements QAService {

	@Autowired
	private QADAO dao;

	@Override
	public List<QADTO> listAll() {
		List<QADTO> list = dao.listAll();
		return list;
	}//listAll

	@Override
	public QADTO detail(String bno) {
		QADTO dto = null;
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
	public List<QADTO> listSearch(SearchDTO inDto) {
		List<QADTO> list = dao.listSearch(inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt = dao.totlistCnt(inDto);
		return totlistCnt;
	}//totlistCnt

}//class











