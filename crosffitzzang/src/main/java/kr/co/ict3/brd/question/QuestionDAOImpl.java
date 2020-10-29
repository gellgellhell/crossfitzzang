package kr.co.ict3.brd.question;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionDAOImpl implements QuestionDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<QuestionDTO> listAll() {
		
		List<QuestionDTO> list
			= sqlSession.selectList("QuestionMapper.listAll");

		return list;
	}//listAll

	@Override
	public QuestionDTO detail(String bno) {
		QuestionDTO dto
		= sqlSession.selectOne("QuestionMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map
			= new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt
		= sqlSession.update("QuestionMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt
		= sqlSession.insert("QuestionMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list
		= sqlSession.selectList("QuestionMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<QuestionDTO> listSearch(SearchDTO inDto) {
		List<QuestionDTO> list
		= sqlSession.selectList("QuestionMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("QuestionMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

}//class









