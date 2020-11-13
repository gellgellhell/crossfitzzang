package kr.co.ict3.brd.notice;

import java.util.List;

import javax.print.DocFlavor.READER;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO dao;

	@Override
	public List<NoticeBoardDTO> listAll() {
		List<NoticeBoardDTO> list = dao.listAll();
		return list;
	}//listAll

	@Override
	public int write(NoticeBoardDTO inDto) {
		int writeCnt = dao.write(inDto);
		return writeCnt;
	}//write

	@Override
	public NoticeBoardDTO detail(String bno) {
		NoticeBoardDTO dto = null;
		dto = dao.detail(bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		int updateCnt = dao.likeCnt(bno, heart);
		return updateCnt;
	}//likeCnt

	@Override
	public int delete(NoticeBoardDTO inDto) {
		int pwdCnt = dao.chkPwd(inDto);
		if(pwdCnt == 0) {
			return -1;
		}
		int deleteCnt = dao.delete(inDto);
		return deleteCnt;
	}//delete

	@Override
	public int update(NoticeBoardDTO inDto) {
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
	public List<NoticeBoardDTO> listSearch(SearchDTO inDto) {
		List<NoticeBoardDTO> list = dao.listSearch(inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt = dao.totlistCnt(inDto);
		return totlistCnt;
	}//totlistCnt

	
}//class











