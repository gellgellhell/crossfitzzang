package kr.co.ict3.brd.mbr;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MemberBoardDTO> listAll() {
		
		List<MemberBoardDTO> list
			= sqlSession.selectList("MemberMapper.listAll");
		return list;
	}//listAll

	@Override
	public MemberBoardDTO detail(String bno) {
		MemberBoardDTO dto
		= sqlSession.selectOne("MemberMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map
			= new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt
		= sqlSession.update("MemberMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt
		= sqlSession.insert("MemberMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list
		= sqlSession.selectList("MemberMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<MemberBoardDTO> listSearch(SearchDTO inDto) {
		List<MemberBoardDTO> list
		= sqlSession.selectList("MemberMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("MemberMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

}//class









