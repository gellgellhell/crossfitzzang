package kr.co.ict3.find;

import kr.co.ict3.join.MbrDTO;

public interface FindDAO {

	public String idFind(MbrDTO inDto);

	public String pwdFind(MbrDTO inDto);

}
