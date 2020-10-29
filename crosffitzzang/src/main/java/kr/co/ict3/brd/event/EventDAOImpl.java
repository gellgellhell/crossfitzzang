package kr.co.ict3.brd.event;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EventDAOImpl implements EventDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<EventBoardDTO> listAll() {
		
		List<EventBoardDTO> list
			= sqlSession.selectList("EventMapper.listAll");

		return list;
	}//listAll

	@Override
	public EventBoardDTO detail(String bno) {
		EventBoardDTO dto
		= sqlSession.selectOne("EventMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map
			= new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt
		= sqlSession.update("EventMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt
		= sqlSession.insert("EventMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list
		= sqlSession.selectList("EventMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<EventBoardDTO> listSearch(SearchDTO inDto) {
		List<EventBoardDTO> list
		= sqlSession.selectList("EventMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("EventMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

}//class









