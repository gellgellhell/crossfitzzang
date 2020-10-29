package kr.co.ict3.brd.qna;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QADAOImpl implements QADAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<QADTO> listAll() {
		
		List<QADTO> list
			= sqlSession.selectList("QAMapper.listAll");
		return list;
	}//listAll

	@Override
	public QADTO detail(String bno) {
		QADTO dto
		= sqlSession.selectOne("QAMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map
			= new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt
		= sqlSession.update("QAMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt
		= sqlSession.insert("QAMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list
		= sqlSession.selectList("QAMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<QADTO> listSearch(SearchDTO inDto) {
		List<QADTO> list
		= sqlSession.selectList("QAMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("QAMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

}//class









