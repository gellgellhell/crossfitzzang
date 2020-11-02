package kr.co.ict3.join;

public interface JoinService {

	public int idCheck(String id);

	public int formSubmit(MbrDTO inDto);

	public int login(MbrDTO inDto);

	public void updatembrinfo(MbrDTO inDto);

}//interface
