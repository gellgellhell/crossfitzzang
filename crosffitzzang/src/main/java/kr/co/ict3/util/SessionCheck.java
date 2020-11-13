package kr.co.ict3.util;

import javax.servlet.http.HttpSession;

import kr.co.ict3.join.MbrDTO;

public class SessionCheck {

   public static String getLoginId(HttpSession session) {
      String id
         = (String) session.getAttribute("login_id_session");
      return id;
   }//getLoginId

   public static boolean isLogin(HttpSession session) {
      MbrDTO mbrSessionObj
         = (MbrDTO) session.getAttribute("login_dto");
      if(mbrSessionObj != null && mbrSessionObj.getMno() != null
            && mbrSessionObj.getMno().trim().length() != 0) {
         return true;
      } else {
         return false;
      }
   }//isLogin

}//class