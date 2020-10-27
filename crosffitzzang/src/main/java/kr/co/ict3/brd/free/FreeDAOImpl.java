package kr.co.ict3.brd.free;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FreeDAOImpl implements FreeDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FreeBoardDTO> listAll() {
		
		List<FreeBoardDTO> list
			= sqlSession.selectList("FreeMapper.listAll");

		return list;
	}//listAll

	@Override
	public int write(FreeBoardDTO inDto) {
		int writeCnt
			= sqlSession.insert("FreeMapper.write", inDto);
		return writeCnt;
	}//write

	@Override
	public FreeBoardDTO detail(String bno) {
		FreeBoardDTO dto
		= sqlSession.selectOne("FreeMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map
			= new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt
		= sqlSession.update("FreeMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int delete(FreeBoardDTO inDto) {
		int deleteCnt
			= sqlSession.delete("FreeMapper.delete", inDto);
		return deleteCnt;
	}//delete

	@Override
	public int chkPwd(FreeBoardDTO inDto) {
		int pwdCnt
			= sqlSession.selectOne("FreeMapper.chkPwd", inDto);
		return pwdCnt;
	}

	@Override
	public int update(FreeBoardDTO inDto) {
		int updateCnt
			= sqlSession.update("FreeMapper.update", inDto);
		return updateCnt;
	}//update

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt
		= sqlSession.insert("FreeMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list
		= sqlSession.selectList("FreeMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<FreeBoardDTO> listSearch(SearchDTO inDto) {
		List<FreeBoardDTO> list
		= sqlSession.selectList("FreeMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("FreeMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

}//class









