package kr.co.ict3.join;

public interface JoinDAO {

	public int idCheck(String id);

	public int formSubmit(MbrDTO inDto);

	public int login(MbrDTO inDto);

	public int pwdCheck(MbrDTO inDto);

	public int insertBizMember(MbrDTO inDto);

	public void updatembrinfo(MbrDTO inDto);

}//interface
