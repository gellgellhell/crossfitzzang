package kr.co.ict3.brd.m2m;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MMDAOImpl implements MMDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MMDTO> listAll() {
		
		List<MMDTO> list
			= sqlSession.selectList("MmMapper.listAll");
		return list;
	}//listAll

	@Override
	public MMDTO detail(String bno) {
		MMDTO dto
		= sqlSession.selectOne("MmMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map
			= new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt
		= sqlSession.update("MmMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt
		= sqlSession.insert("MmMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list
		= sqlSession.selectList("MmMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<MMDTO> listSearch(SearchDTO inDto) {
		List<MMDTO> list
		= sqlSession.selectList("MmMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("MmMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

	@Override
	public int chkPwd(MMDTO inDto) {
		int pwdCnt
		= sqlSession.selectOne("MmMapper.chkPwd", inDto);
		return pwdCnt;
	}//chkPwd

	@Override
	public int update(MMDTO inDto) {
		int updateCnt
		= sqlSession.update("MmMapper.update", inDto);
		return updateCnt;
	}//update

	@Override
	public int write(MMDTO inDto) {
		
		int writeCnt = sqlSession.insert("MmMapper.write", inDto);
		return writeCnt;
		
	}//write

	@Override
	public int delete(MMDTO inDto) {
		int deleteCnt = sqlSession.delete("MmMapper.delete", inDto);
		return deleteCnt;
	}//delete

}//class









