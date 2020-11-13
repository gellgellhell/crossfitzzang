package kr.co.ict3.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class JoinServiceImpl implements JoinService {

	@Autowired
	private JoinDAO dao;

	@Override
	public int idCheck(String id) {
		int idCount = dao.idCheck(id);
		return idCount;
	}//idCheck

	@Override
	@Transactional
	public int formSubmit(MbrDTO inDto) {
		int insertCnt = dao.formSubmit(inDto);//일반회원입력.
//		if(inDto.getBiz_yn().equals("true")) {
//			insertCnt = dao.insertBizMember(inDto);//사업자회원입력.
//		}
		return insertCnt;
	}//formSubmit

	@Override
	public int login(MbrDTO inDto) {
		int idYN = dao.idCheck(inDto.getId());
		if(idYN != 1) {
			return -1;
		}
		int pwdYN = dao.pwdCheck(inDto);
		if(pwdYN == 0) {
			return -2;
		}
		int mbrNo = dao.login(inDto);
		return mbrNo;
	}//login

	@Override
	public void updatembrinfo(MbrDTO inDto) {
		
		dao.updatembrinfo(inDto);
		
	}// updatembrinfo

}//class










