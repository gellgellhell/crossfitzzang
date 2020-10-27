package kr.co.ict3.util;

import javax.servlet.http.HttpSession;

public class SessionCheck {

	public static String getLoginId(HttpSession session) {
		String id
			= (String) session.getAttribute("login_id_session");
		return id;
	}//getLoginId

	public static boolean isLogin(HttpSession session) {
		String id
			= (String) session.getAttribute("login_id_session");
		if(id != null && id.length() > 0) {
			return true;
		} else {
			return false;
		}
	}//isLogin

}//class
