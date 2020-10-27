package kr.co.ict3.memberboard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void updateLikeCnt(String bno) {
		sqlSession.update("BoardMapper.updateLikeCnt", bno);
	}//updateLikeCnt

	@Override
	public int update(BoardDTO inDto) {
		int successCnt
			= sqlSession.update("BoardMapper.update", inDto);
		return successCnt;
	}

	@Override
	public void updateViewCnt(String bno) {
		sqlSession.update("BoardMapper.updateViewCnt", bno);
	}

	@Override
	public int delete(String bno) {
		int successCnt
			= sqlSession.delete("BoardMapper.delete", bno);
		return successCnt;
	}

	@Override
	public BoardDTO detail(String bno) {
		BoardDTO dto
			= sqlSession.selectOne("BoardMapper.detail", bno);
		return dto;
	}

	@Override
	public int write(BoardDTO inDto) {
		int successCnt
			= sqlSession.insert("BoardMapper.write", inDto);
		return successCnt;
	}//write

	@Override
	public List<BoardDTO> list() {

		List<BoardDTO> list
			= sqlSession.selectList("BoardMapper.list");

		return list;

	}//list

}//class
