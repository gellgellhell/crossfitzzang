package kr.co.ict3.join;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDAOImpl implements JoinDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int idCheck(String id) {
		int idCount
			= sqlSession.selectOne("JoinMapper.idCheck", id);
		return idCount;
	}//idCheck

	@Override
	public int formSubmit(MbrDTO inDto) {
		int insertCnt = sqlSession.insert("JoinMapper.formSubmit", inDto);
		return insertCnt;
	}//formSubmit

	@Override
	public int login(MbrDTO inDto) {
		int mbrNo
			= sqlSession.selectOne("JoinMapper.login", inDto);
		return mbrNo;
	}//login

	@Override
	public int pwdCheck(MbrDTO inDto) {
		int pwdYN
			= sqlSession.selectOne("JoinMapper.pwdCheck", inDto);
		return pwdYN;
	}//pwdCheck



	@Override
	public void updatembrinfo(MbrDTO inDto) {
		 sqlSession.update("JoinMapper.updatembrinfo", inDto);
	}// updatembrinfo

}//class








