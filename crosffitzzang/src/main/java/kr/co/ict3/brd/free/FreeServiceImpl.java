package kr.co.ict3.brd.free;

import java.util.List;

import javax.print.DocFlavor.READER;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FreeServiceImpl implements FreeService {

	@Autowired
	private FreeDAO dao;

	@Override
	public List<FreeBoardDTO> listAll() {
		List<FreeBoardDTO> list = dao.listAll();
		return list;
	}//listAll

	@Override
	public int write(FreeBoardDTO inDto) {
		int writeCnt = dao.write(inDto);
		return writeCnt;
	}//write

	@Override
	public FreeBoardDTO detail(String bno) {
		FreeBoardDTO dto = null;
		dto = dao.detail(bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		int updateCnt = dao.likeCnt(bno, heart);
		return updateCnt;
	}//likeCnt

	@Override
	public int delete(FreeBoardDTO inDto) {
		int pwdCnt = dao.chkPwd(inDto);
		if(pwdCnt == 0) {
			return -1;
		}
		int deleteCnt = dao.delete(inDto);
		return deleteCnt;
	}//delete

	@Override
	public int update(FreeBoardDTO inDto) {
		int pwdCnt = dao.chkPwd(inDto);
		if(pwdCnt == 0) {
			return -1;
		}
		int updateCnt = dao.update(inDto);
		return updateCnt;
	}//update

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
	public List<FreeBoardDTO> listSearch(SearchDTO inDto) {
		List<FreeBoardDTO> list = dao.listSearch(inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt = dao.totlistCnt(inDto);
		return totlistCnt;
	}//totlistCnt

}//class











