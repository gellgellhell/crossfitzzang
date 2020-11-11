package kr.co.ict3.find;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ict3.join.MbrDTO;

@Repository
public class FindDAOImpl implements FindDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public String idFind(MbrDTO inDto) {
		String id = sqlSession.selectOne("FindMapper.idFind", inDto);
		return id;
	}//idFind

	@Override
	public String pwdFind(MbrDTO inDto) {
		String pwd = sqlSession.selectOne("FindMapper.pwdFind", inDto);
		return pwd;
	}

}//class
