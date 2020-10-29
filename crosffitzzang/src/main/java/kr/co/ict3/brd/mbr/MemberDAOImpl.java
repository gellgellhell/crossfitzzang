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
		List<MemberBoardDTO> list = sqlSession.selectList("memberMapper.listAll");
		return list;
	}//listAll

	@Override
	public int write(MemberBoardDTO inDto) {
		int writeCnt = sqlSession.insert("memberMapper.write", inDto);
		return writeCnt;
	}//write

	@Override
	public MemberBoardDTO detail(String bno) {
		MemberBoardDTO dto = sqlSession.selectOne("memberMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt = sqlSession.update("memberMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int delete(MemberBoardDTO inDto) {
		int deleteCnt = sqlSession.delete("memberMapper.delete", inDto);
		return deleteCnt;
	}//delete

	@Override
	public int chkPwd(MemberBoardDTO inDto) {
		int pwdCnt = sqlSession.selectOne("memberMapper.chkPwd", inDto);
		return pwdCnt;
	}

	@Override
	public int update(MemberBoardDTO inDto) {
		int updateCnt = sqlSession.update("memberMapper.update", inDto);
		return updateCnt;
	}//update

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt = sqlSession.insert("memberMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list = sqlSession.selectList("memberMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<MemberBoardDTO> listSearch(SearchDTO inDto) {
		List<MemberBoardDTO> list = sqlSession.selectList("memberMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt = sqlSession.selectOne("memberMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

}//class









