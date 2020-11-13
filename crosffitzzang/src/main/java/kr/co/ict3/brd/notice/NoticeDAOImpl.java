package kr.co.ict3.brd.notice;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<NoticeBoardDTO> listAll() {
		
		List<NoticeBoardDTO> list
			= sqlSession.selectList("NoticeMapper.listAll");

		return list;
	}//listAll

	@Override
	public int write(NoticeBoardDTO inDto) {
		int writeCnt
			= sqlSession.insert("NoticeMapper.write", inDto);
		return writeCnt;
	}//write

	@Override
	public NoticeBoardDTO detail(String bno) {
		NoticeBoardDTO dto
		= sqlSession.selectOne("NoticeMapper.detail", bno);
		return dto;
	}//detail

	@Override
	public int likeCnt(String bno, String heart) {
		HashMap<String, String> map
			= new HashMap<String, String>();
		map.put("bno", bno);
		map.put("heart", heart);
		int updateCnt
		= sqlSession.update("NoticeMapper.likeCnt", map);
		return updateCnt;
	}//likeCnt

	@Override
	public int delete(NoticeBoardDTO inDto) {
		int deleteCnt
			= sqlSession.delete("NoticeMapper.delete", inDto);
		return deleteCnt;
	}//delete

	@Override
	public int chkPwd(NoticeBoardDTO inDto) {
		int pwdCnt
			= sqlSession.selectOne("NoticeMapper.chkPwd", inDto);
		return pwdCnt;
	}

	@Override
	public int update(NoticeBoardDTO inDto) {
		int updateCnt
			= sqlSession.update("NoticeMapper.update", inDto);
		return updateCnt;
	}//update

	@Override
	public int insHanjul(ReplyDTO inDto) {
		System.out.println("dao - insHanjul");
		int successCnt
		= sqlSession.insert("NoticeMapper.insHanjul", inDto);
		return successCnt;
	}//insHanjul

	@Override
	public List<ReplyDTO> viewHanjul(String bno) {
		List<ReplyDTO> list
		= sqlSession.selectList("NoticeMapper.viewHanjul", bno);
		return list;
	}//viewHanjul

	@Override
	public List<NoticeBoardDTO> listSearch(SearchDTO inDto) {
		List<NoticeBoardDTO> list
		= sqlSession.selectList("NoticeMapper.listSearch", inDto);
		return list;
	}//listSearch

	@Override
	public int totlistCnt(SearchDTO inDto) {
		int totlistCnt
		= sqlSession.selectOne("NoticeMapper.totlistCnt", inDto);
		return totlistCnt;
	}//totlistCnt

	@Override
	public void updateFilePath(NoticeBoardDTO inDto) {
		sqlSession.update("NoticeMapper.updateFilePath", inDto);
	}//updateFilePath

}//class









