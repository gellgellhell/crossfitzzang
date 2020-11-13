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

	@Override
	public int delete(MMDTO inDto) {
		int pwdCnt = dao.chkPwd(inDto);
		if(pwdCnt == 0) {
			return -1;
		}
		int deleteCnt = dao.delete(inDto);
		return deleteCnt;
	}//delete

	@Override
	public int update(MMDTO inDto) {
		int pwdCnt = dao.chkPwd(inDto);
		if(pwdCnt == 0) {
			return -1;
		}
		int updateCnt = dao.update(inDto);
		return updateCnt;
	}//update

	@Override
	public int write(MMDTO inDto) {
		int writeCnt = dao.write(inDto);
		return writeCnt;
	}//write

}//class











