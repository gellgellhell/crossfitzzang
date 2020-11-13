package kr.co.ict3.brd.mbr;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MbrDAOImpl implements MbrDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MbrBoardDTO> listAll() {
		
		List<MbrBoardDTO> list
			= sqlSession.selectList("MemberMapper.listAll");

		return list;
	}//listAll

	@Override
	public int write(MbrBoardDTO inDto) {
		int writeCnt
			= sqlSession.insert("MemberMapper.write", inDto);
		return writeCnt;
	}//write

	@Override
	public MbrBoardDTO detail(String bno) {
		MbrBoardDTO dto
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
	public int delete(MbrBoardDTO inDto) {
		int deleteCnt
			= sqlSession.delete("MemberMapper.delete", inDto);
		return deleteCnt;
	}//delete

	@Override
	public int chkPwd(MbrBoardDTO inDto) {
		int pwdCnt
			= sqlSession.selectOne("MemberMapper.chkPwd", inDto);
		return pwdCnt;
	}

	@Override
	public int update(MbrBoardDTO inDto) {
		int updateCnt
			= sqlSession.update("MemberMapper.update", inDto);
		return updateCnt;
	}//update

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
	public List<MbrBoardDTO> listSearch(SearchDTO inDto) {
		List<MbrBoardDTO> list
		= sqlSession.selectList("MemberMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("MemberMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

	@Override
	public void updateFilePath(MbrBoardDTO inDto) {
		sqlSession.update("MemberMapper.updateFilePath", inDto);
	}//updateFilePath

}//class









