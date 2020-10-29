package kr.co.ict3.brd.m2m;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MMServiceImpl implements MMService {

	@Autowired
	private MMDAO dao;

	@Override
	public List<MMDTO> listAll() {
		List<MMDTO> list = dao.listAll();
		return list;
	}//listAll

	@Override
	public MMDTO detail(String bno) {
		MMDTO dto = null;
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
	public List<MMDTO> listSearch(SearchDTO inDto) {
		List<MMDTO> list = dao.listSearch(inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt = dao.totlistCnt(inDto);
		return totlistCnt;
	}//totlistCnt

}//class











