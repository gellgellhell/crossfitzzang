package kr.co.ict3.memberboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MBServiceImpl implements MBService {

	@Autowired
	private BoardDAO dao;

	@Override
	public void updateLikeCnt(String bno) {
		dao.updateLikeCnt(bno);
	}//updateLikeCnt

	@Override
	public int update(BoardDTO inDto) {
		int successCnt = dao.update(inDto);
		return successCnt;
	}//update

	@Override
	public int delete(String bno, String loginId) {
		BoardDTO dto = dao.detail(bno);
		if(loginId.equals(dto.getId())) {
			int successCnt = dao.delete(bno);
			return successCnt;
		} else {
			return -1;
		}
	}//delete

	@Override
	public BoardDTO detail(String bno) {
		dao.updateViewCnt(bno);
		BoardDTO dto = dao.detail(bno);
		return dto;
	}

	@Override
	public int write(BoardDTO inDto) {
		int successCnt = dao.write(inDto);
		return successCnt;
	}//write

	@Override
	public List<BoardDTO> list() {
		List<BoardDTO> list = dao.list();
		return list;
	}//list

}//class
