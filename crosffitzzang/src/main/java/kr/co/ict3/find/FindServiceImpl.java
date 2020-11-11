package kr.co.ict3.find;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ict3.join.MbrDTO;

@Service
public class FindServiceImpl implements FindService {

	@Autowired
	private FindDAO dao;

	@Override
	public String idFind(MbrDTO inDto) {
		String id = dao.idFind(inDto);
		return id;
	}//idFind

	@Override
	public String pwdFind(MbrDTO inDto) {
		String pwd = dao.pwdFind(inDto);
		return pwd;
	}

}//class
